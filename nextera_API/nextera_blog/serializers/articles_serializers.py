# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *
from drf_writable_nested import UniqueFieldsMixin, NestedUpdateMixin
from .comments_serializers import CommentsChainSerializer
from .reaction_types_serializers import ReactionsArticleSerializer
from rest_framework.pagination import PageNumberPagination


class ArticlesListSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    author = BaseAuthorsSerializer(many=False)
    tags = BaseTagsSerializer(many=True)
    article_reactions = serializers.SerializerMethodField()

    class Meta:
        model = Articles
        fields = ['article_id', 'title', 'content', 'creation_date', 'update_date', 
                  'author', 'tags', 'article_reactions']
    
    def get_article_reactions(self, obj):
        # Get all reactions
        reaction_types = ReactionTypes.objects.all()
        # Get counter with reactions
        return ReactionsArticleSerializer(reaction_types, many=True, context={'article_id': obj.article_id}).data
        
    

class ArticlesDetailSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    author = BaseAuthorsSerializer(many=False)
    tags = BaseTagsSerializer(many=True)
    comments = serializers.SerializerMethodField()
    article_reactions = serializers.SerializerMethodField()

    
    class Meta:
        model = Articles
        fields = ['article_id', 'title', 'content', 'creation_date', 'update_date', 
                  'author', 'tags', 'comments', 'article_reactions']

    def get_comments(self, obj):
        request = self.context.get('request')
        paginator = PageNumberPagination()
        paginator.page_size = 5

        # Get root level comments
        root_comments = Comments.objects.filter(article=obj, parent_comment=None).order_by('creation_date')
        page = paginator.paginate_queryset(root_comments, request)
        # Start by serializing those
        serializer = CommentsChainSerializer(page, many=True, context=self.context)
        return paginator.get_paginated_response(serializer.data).data
    
    def get_article_reactions(self, obj):
        # Get all reactions
        reaction_types = ReactionTypes.objects.all()
        # Get counter with reactions
        return ReactionsArticleSerializer(reaction_types, many=True, context={'article_id': obj.article_id}).data


class ArticlesWriteSerializer(serializers.ModelSerializer):
    # Write only need primary keys
    author = serializers.PrimaryKeyRelatedField(queryset=Authors.objects.all())
    
    class Meta:
        model = Articles
        fields = '__all__'

class  ArticlesMinimalSerializer(serializers.ModelSerializer):

    class Meta:
        model = Articles
        fields = ['article_id', 'title']

class ArticlesUpdateSerializer(UniqueFieldsMixin, NestedUpdateMixin, serializers.ModelSerializer):
    tags = serializers.PrimaryKeyRelatedField(
        many=True,
        queryset=Tags.objects.all()
    )
    class Meta:
        model = Articles
        fields = ['title', 'content', 'tags']