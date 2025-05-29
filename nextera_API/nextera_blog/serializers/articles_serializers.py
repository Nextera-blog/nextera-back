# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *
from drf_writable_nested import UniqueFieldsMixin, NestedUpdateMixin
from .comments_serializers import CommentsChainSerializer
from .reaction_types_serializers import ReactionsArticleSerializer

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
        # Get root level comments
        root_comments = Comments.objects.filter(article=obj, parent_comment=None)
        # Start by serializing those
        return CommentsChainSerializer(root_comments, many=True, context=self.context).data
    
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

class ArticlesUpdateSerializer(UniqueFieldsMixin, NestedUpdateMixin):
    tags = serializers.PrimaryKeyRelatedField(
        many=True,
        queryset=Tags.objects.all()
    )
    class Meta:
        model = Articles
        fields = ['title', 'content', 'tags']