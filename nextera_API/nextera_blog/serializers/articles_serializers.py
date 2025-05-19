# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *

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
    
    class Meta:
        model = Articles
        fields = '__all__'

class ArticlesWriteSerializer(serializers.ModelSerializer):
    # Write only need primary keys
    author = serializers.PrimaryKeyRelatedField(queryset=Authors.objects.all())
    
    class Meta:
        model = Articles
        fields = '__all__'