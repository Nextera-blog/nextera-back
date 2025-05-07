from rest_framework import serializers
from .models import *

class AuthorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Authors
        fields = '__all__'

class ArticlesSerializer(serializers.ModelSerializer):
    # Relations (use the model field name to set serialization properly)
    author = AuthorsSerializer();
    
    class Meta:
        model = Articles
        fields = '__all__'