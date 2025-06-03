# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *


class ArticleReactionsManageSerializer(serializers.ModelSerializer):
    user = serializers.PrimaryKeyRelatedField(queryset=User.objects.all())
    article = serializers.PrimaryKeyRelatedField(queryset=Articles.objects.all())
    reaction_type = serializers.PrimaryKeyRelatedField(queryset=ReactionTypes.objects.all())

    class Meta:
        model = ArticleReactions
        fields = ['user', 'article', 'reaction_type']