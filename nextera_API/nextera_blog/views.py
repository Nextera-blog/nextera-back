# Django
from django.shortcuts import render
from django.http import HttpResponse

# Base
import json

# API framework
from rest_framework.decorators import api_view
from rest_framework.response import Response

# Models
from .models import Articles

# Serializers
from .serializers import ArticlesSerializer

# Create your views here.

def home(request):
    return HttpResponse("Bonjour, voici une réponse HTTP simple.")

@api_view(['GET'])
def articles_list(request):
    articles = Articles.objects.all()
    serializer = ArticlesSerializer(articles, many=True)
    return Response(serializer.data)