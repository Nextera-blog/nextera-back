# Import django serializers, models, auth_user
# Mandatory here

from nextera_API.nextera_blog.serializers import *

# Specific imports

from django.contrib.auth.password_validation import validate_password
from django.core.exceptions import ValidationError as DjangoValidationError

# Django native auth_user (User model)

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
    author = BaseAuthorsSerializer(source='author_profile', many=False)
    role = BaseRolesSerializer(source='user_role.role' ,many=False)

    class Meta:
        model = User
        fields = ['id', 'username', 'first_name', 'last_name', 'email', 'author', 'role']