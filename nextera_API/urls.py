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
    path('users/register/', views.register_user, name='register_user'),
    path('users/update/<int:id>', views.update_user, name='update_user'),
    path('users/current/', views.current_user, name='current_user'),
    # Articles
    path('articles/', views.articles_list, name='articles_list'),
    path('articles/<int:id>/', views.article_detail, name='article_details'),
    path('articles/create/', CreateArticleView.as_view(), name='article_create'),
    path('articles/update/<int:id>/', views.article_update, name='article_update'),

    # Authors
    path('authors/', views.authors_list, name = 'authors_list'),
    path('authors/<int:id>/', views.author_detail, name = 'author_details'),
    # Comments
    path('comments/create/', views.comment_create, name = 'comment_create'),
    path('comments/update/<int:id>/', views.comment_update, name = 'comment_update'),

    # Reactions
    path('articles/reactions/<int:id>/', views.article_reaction_manage, name= 'article_reaction_manage'),
    path('comments/reactions/<int:id>/', views.comment_reaction_manage, name= 'comment_reaction_manage'),
    # Tags
    path('tags/', views.tags_list, name = 'tags_list'),
    # Test only
    # path('test/<int:id>/', views.test, name='test')
]
