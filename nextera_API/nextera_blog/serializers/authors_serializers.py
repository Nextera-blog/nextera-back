# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *


class AuthorsDetailSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    articles = serializers.SerializerMethodField()
    
    class Meta:
        model = Authors
        fields = ['user', 'name', 'bio', 'profile_picture_url', 'join_date', 'articles']

    def get_articles(self, obj):
        return ArticlesMinimalSerializer(obj.articles_written.all(), many=True).data