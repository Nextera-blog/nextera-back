# Django
from django.shortcuts import get_object_or_404, get_list_or_404
from django.utils import timezone

# Auth
from django.contrib.auth import authenticate, get_user_model
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.permissions import AllowAny, IsAuthenticated

# API framework
from rest_framework.views import APIView
from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response
from rest_framework import status
from rest_framework.exceptions import NotFound

# Models
from .models import Articles, Roles

# Serializers
from nextera_API.nextera_blog.serializers import *

# Django auth_user abstract class
User = get_user_model()


# User views

class CustomLoginView(APIView):
    # Set permission to any for users to be able to login
    permission_classes = [AllowAny]

    # Main login function (use email instead of username)
    def post(self, request):
        email = request.data.get("email")
        password = request.data.get("password")

        try:
            user = User.objects.get(email=email)
        except User.DoesNotExist:
            return Response({"error": "Utilisateur non trouvé"}, status=status.HTTP_404_NOT_FOUND)

        user = authenticate(username=user.username, password=password)
        if user is not None:
            refresh = RefreshToken.for_user(user)
            return Response({
                'refresh': str(refresh),
                'access': str(refresh.access_token),
            })
        return Response({"error": "Identifiants invalides"}, status=status.HTTP_401_UNAUTHORIZED)

@api_view(['POST'])
@permission_classes([AllowAny])
def register_user(request):
    try:
        visitor_role = Roles.objects.get(role_name='Visitor')
    except Roles.DoesNotExist:
        raise NotFound(detail="Un problème est survenu lors de la création du compte")
    
    serializer = UserSerializer(data=request.data)
    
    if serializer.is_valid():
        new_user = serializer.save()
        UsersRoles.objects.create(user=new_user, role=visitor_role)
        Authors.objects.create(user=new_user, name=new_user.username)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
@permission_classes([IsAuthenticated])
def current_user(request):
    serializer = CurrentUserSerializer(request.user)
    return Response(serializer.data)


#  Article views

@api_view(['GET'])
def articles_list(request):
    articles = Articles.objects.all()
    serializer = ArticlesListSerializer(articles, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def article_detail(request, id):
    article = get_object_or_404(Articles, article_id=id)
    serializer = ArticlesDetailSerializer(article, many=False)
    return Response(serializer.data)

class CreateArticleView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        # Permissions check
        user_role = request.user.user_role.role.role_name
        if (user_role != 'Author'):
            return Response({"message": "Accès refusé. Droits insuffisants."}, status=403)

        data = request.data
        data['author'] = request.user.id
        data['creation_date'] = timezone.now()

        serializer = ArticlesWriteSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT'])
@permission_classes([IsAuthenticated])
def article_update(request, id):
    # Get article instance to update or send error
    try:
        article = Articles.objects.get(article_id = id)
    except Articles.DoesNotExist:
        raise NotFound(detail="Un problème est survenu lors de la mise à jour de l'article")

    # Author role permissions check
    user_role = request.user.user_role.role.role_name
    if (user_role != 'Author'):
        return Response({"message": "Accès refusé. Droits insuffisants."}, status=403)
    
    # Check connected user is request article owner
    user_id = request.user.id
    author = request.data.get('author', {})
    author_id = int(author.get('user'))

    if author_id != user_id:
        return Response({"message": "Accès refusé. Droits d'écriture insuffisants."}, status=403)
    
    # Check database article and request article have the same author
    if author_id != article.author.user.id:
        return Response({"message": "Accès refusé. Les droits d'écriture sont insuffisants."}, status=403)
    
    serializer = ArticlesUpdateSerializer(instance = article, data = request.data)
    if serializer.is_valid():
        serializer.save()
        response_serializer = ArticlesDetailSerializer(article, many=False)
        return Response(response_serializer.data)
    else:
        return Response(serializer.errors, status=400)
    


# Authors

@api_view(['GET'])
def authors_list(request):
    authors = Authors.objects.all()
    serializer = BaseAuthorsSerializer(authors, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def author_detail(request, id):
    author = get_object_or_404(Authors, user = id)
    serializer = AuthorsDetailSerializer(author)
    return Response(serializer.data)


# Tests

@api_view(['PUT'])
def test(request, id):
    article = get_object_or_404(Articles, article_id=id)
    serializer = ArticlesDetailSerializer(article, many=False)
    return Response(serializer.data)