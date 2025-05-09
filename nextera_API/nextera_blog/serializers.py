from django.contrib.auth.models import User
from django.contrib.auth.password_validation import validate_password
from django.core.exceptions import ValidationError as DjangoValidationError
from rest_framework import serializers
from .models import *

# User

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model=User
        fields = ['id', 'username', 'email', 'password', 'first_name', 'last_name']
    
    def create(self, validated_data):
        password = validated_data['password']
        try:
            validate_password(password)
        except DjangoValidationError as e:
            raise serializers.ValidationError({'password': list(e.messages)})

        return User.objects.create_user(
            username=validated_data['username'],
            email=validated_data.get('email'),
            password=password,
            first_name=validated_data.get('first_name', ''),
            last_name=validated_data.get('last_name', '')
        )
    
class CurrentUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username', 'first_name', 'last_name', 'email']


# Authors

class AuthorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Authors
        fields = '__all__'


# Articles

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
