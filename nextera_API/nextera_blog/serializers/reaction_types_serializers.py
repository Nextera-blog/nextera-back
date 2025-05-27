# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *

class ReactionsArticleSerializer(serializers.ModelSerializer):

    counter = serializers.SerializerMethodField()

    class Meta:
        model = ReactionTypes
        fields = ['reaction_type_id', 'emoji', 'description', 'counter']

    def get_counter(self, obj):
        article_id = self.context.get('article_id')
        if article_id is None:
            return 0
        
        return ArticleReactions.objects.filter(
            reaction_type=obj,
            article_id=article_id
        ).count()
    

class ReactionsCommentSerializer(serializers.ModelSerializer):

    counter = serializers.SerializerMethodField()

    class Meta:
        model = ReactionTypes
        fields = ['reaction_type_id', 'emoji', 'description', 'counter']

    def get_counter(self, obj):
        comment_id = self.context.get('comment_id')
        if comment_id is None:
            return 0
        
        return CommentReactions.objects.filter(
            reaction_type=obj,
            comment_id=comment_id
        ).count()