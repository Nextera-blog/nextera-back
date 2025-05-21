# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *
from .comments_serializers import CommentsChainSerializer

class ArticlesListSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    author = BaseAuthorsSerializer(many=False)
    tags = BaseTagsSerializer(many=True)

    class Meta:
        model = Articles
        fields = '__all__'

class ArticlesDetailSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    author = BaseAuthorsSerializer(many=False)
    tags = BaseTagsSerializer(many=True)
    comments = serializers.SerializerMethodField()
    
    class Meta:
        model = Articles
        fields = ['article_id', 'title', 'content', 'creation_date', 'update_date', 'author', 'tags', 'comments']

    def get_comments(self, obj):
        # Get root level comments
        root_comments = Comments.objects.filter(article=obj, parent_comment=None)
        # Start by serializing those
        return CommentsChainSerializer(root_comments, many=True, context=self.context).data

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