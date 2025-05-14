# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *


class ArticlesReadSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    author = CurrentUserSerializer(many=False)
    
    class Meta:
        model = Articles
        fields = '__all__'

class ArticlesWriteSerializer(serializers.ModelSerializer):
    # Write only need primary keys
    author = serializers.PrimaryKeyRelatedField(queryset=User.objects.all())
    
    class Meta:
        model = Articles
        fields = '__all__'