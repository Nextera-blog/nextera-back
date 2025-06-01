# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *
from .reaction_types_serializers import ReactionsCommentSerializer


class CommentsCreateSerializer(serializers.ModelSerializer):
    user = serializers.PrimaryKeyRelatedField(queryset=Authors.objects.all())
    article = serializers.PrimaryKeyRelatedField(queryset=Articles.objects.all())
    parent_comment = serializers.PrimaryKeyRelatedField(queryset=Comments.objects.all(), allow_null=True)

    class Meta:
        model = Comments
        fields = ['comment_id', 'content', 'user', 'article', 'parent_comment']


class CommentsUpdateSerializer(serializers.ModelSerializer):
    user = serializers.PrimaryKeyRelatedField(queryset=Authors.objects.all())

    class Meta:
        model = Comments
        fields = ['comment_id', 'content', 'user']


class CommentsChainSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    user = BaseAuthorsSerializer(many=False)
    comment_reactions = serializers.SerializerMethodField()
    comment_replies = serializers.SerializerMethodField()

    class Meta:
        model = Comments
        fields = ['comment_id', 'content', 'creation_date', 'update_date', 'user', 'article',
                   'parent_comment', 'comment_replies', 'comment_reactions']

    def get_comment_reactions(self, obj):
        # Get all reactions
        reaction_types = ReactionTypes.objects.all()
        # Get counter with reactions
        return ReactionsCommentSerializer(reaction_types, many=True, context={'comment_id': obj.comment_id}).data
    
    def get_comment_replies(self, obj):
        children = obj.comment_replies.all()
        if children.exists():
            return CommentsChainSerializer(children, many=True, context=self.context).data
        return []