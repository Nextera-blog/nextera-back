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
    articles = get_list_or_404(Articles)
    serializer = ArticlesReadSerializer(articles, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def article_detail(request, id):
    article = get_object_or_404(Articles, article_id=id)
    serializer = ArticlesReadSerializer(article, many=False)
    return Response(serializer.data)

class CreateArticleView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        # Permissions check
        if not request.user.is_superuser:
            return Response({"message": "Accès refusé. Droits insuffisants."}, status=403)

        data = request.data
        data['author'] = request.user.id
        data['creation_date'] = timezone.now()

        serializer = ArticlesWriteSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

# @api_view(['GET'])
# def test(request):
#     try:
#         user = User.objects.get(id=3)
#     except User.DoesNotExist:
#         return Response({'detail': 'Utilisateur non trouvé.'}, status=404)

#     serializer = TestSerializer(user)
#     return Response(serializer.data)