"""
URL configuration for nextera_API project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
# """
# Base
from django.urls import path
from django.contrib import admin

# Tokens 
from rest_framework_simplejwt.views import TokenRefreshView

# Views
from nextera_API.nextera_blog import views

# Classes views
from nextera_API.nextera_blog.views import CustomLoginView, CreateArticleView

urlpatterns = [
    # Auth
    path('token/', CustomLoginView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    # Admin
    path('admin/', admin.site.urls),
    # Users
    path('users/register/', views.register_user, name='register'),
    path('users/current/', views.current_user, name='current_user'),
    # Urls
    path('articles/', views.articles_list, name='articles_list'),
    path('articles/<int:id>/', views.article_detail, name='articles_details'),
    path('articles/create/', CreateArticleView.as_view(), name='articles_create'),
    # Test only
    # path('test/', views.test, name='test')

]
