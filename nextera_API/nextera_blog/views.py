from django.shortcuts import render
from django.http import HttpResponse
import json
# Create your views here.
def test(request):
    data = {"message": "Ceci est un JSON"}
    return HttpResponse(json.dumps(data), content_type="application/json")

def home(request):
    return HttpResponse("Bonjour, voici une réponse HTTP simple.")