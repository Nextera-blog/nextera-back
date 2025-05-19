from rest_framework import serializers
from django.contrib.auth.models import User
from nextera_API.nextera_blog.models import *


# Authors

class BaseAuthorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Authors
        fields = '__all__'


# Roles

class BaseRolesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Roles
        fields = '__all__'


# User

class BaseUserSerializer(serializers.ModelSerializer):
    class Meta:
        model=User
        fields = ['id', 'username', 'email', 'password', 'first_name', 'last_name']


# Articles

class BaseArticlesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Articles
        fields = '__all__'


# Comments

class BaseCommentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comments
        fields = '__all__'


# Tags

class BaseTagsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tags
        fields = '__all__'


# Reactions

class BaseReactionsSerializer(serializers.ModelSerializer):
    class Meta:
        model = ReactionTypes
        fields = '__all__'


# Join table between users and roles

class BaseUsersRolesSerializer(serializers.ModelSerializer):
    class Meta:
        model = UsersRoles
        fields = '__all__'


# Test purpose only

class TestSerializer(serializers.ModelSerializer):

    author = BaseAuthorsSerializer(source='author_profile', many=False)
    role = BaseRolesSerializer(source='user_role.role' ,many=False)

    class Meta:
        model = User
        fields = ['id', 'username', 'first_name', 'last_name', 'email', 'author', 'role']