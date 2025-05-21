# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *

class CommentsChainSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    user = BaseAuthorsSerializer(many=False)
    comment_replies = serializers.SerializerMethodField()

    class Meta:
        model = Comments
        fields = ['comment_id', 'content', 'creation_date', 'update_date', 'user', 'article', 'parent_comment', 'comment_replies']

    def get_comment_replies(self, obj):
        children = obj.comment_replies.all()
        if children.exists():
            return CommentsChainSerializer(children, many=True, context=self.context).data
        return []