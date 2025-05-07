# Django
from django.shortcuts import render, get_object_or_404, get_list_or_404
from django.http import HttpResponse

# Auth
from django.contrib.auth import authenticate, get_user_model
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.permissions import AllowAny

# Base
import json

# API framework
from rest_framework.views import APIView
from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response
from rest_framework import status

# Models
from .models import Articles

# Serializers
from .serializers import ArticlesSerializer

# Special views functions as classes

# Django auth_user abstract class
User = get_user_model()

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
        return Response({"error": "Mot de passe invalide"}, status=status.HTTP_401_UNAUTHORIZED)


# Basic views functions

@api_view(['GET'])
def articles_list(request):
    articles = get_list_or_404(Articles)
    serializer = ArticlesSerializer(articles, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def article_detail(request, id):
    article = get_object_or_404(Articles, article_id=id)
    serializer = ArticlesSerializer(article, many=False)
    return Response(serializer.data)
