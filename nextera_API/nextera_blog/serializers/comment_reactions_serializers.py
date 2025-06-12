# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *


class CommentReactionsManageSerializer(serializers.ModelSerializer):
    user = serializers.PrimaryKeyRelatedField(queryset=User.objects.all())
    comment = serializers.PrimaryKeyRelatedField(queryset=Comments.objects.all())
    reaction_type = serializers.PrimaryKeyRelatedField(queryset=ReactionTypes.objects.all())

    class Meta:
        model = CommentReactions
        fields = ['user', 'comment', 'reaction_type']