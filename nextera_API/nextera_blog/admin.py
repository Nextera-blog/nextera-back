from django.contrib import admin
from .models import *

@admin.register(Authors)
class AuthorsAdmin(admin.ModelAdmin):
    list_display = ('user__id', 'get_role', 'name', 'bio', 'profile_picture_url', 'join_date')

    def get_role(self, obj):
        return obj.user.user_role.role.role_name
    
    get_role.short_description = "Role"

@admin.register(Articles)
class ArticlesAdmin(admin.ModelAdmin):
    list_display = ('article_id', 'title', 'author__name', 'get_user', 'creation_date')

    def get_user(self, obj):
        return obj.author.user.username
    
    get_user.short_description = "User"

@admin.register(Tags)
class TagsAdmin(admin.ModelAdmin):
    list_display = ('tag_id', 'name')

@admin.register(ReactionTypes)
class ReactionsAdmin(admin.ModelAdmin):
    list_display = ('reaction_type_id', 'emoji', 'description')  