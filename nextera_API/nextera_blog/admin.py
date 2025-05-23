from django.contrib import admin
from .models import Articles

@admin.register(Articles)
class ArticlesAdmin(admin.ModelAdmin):
    list_display = ('article_id', 'title', 'author', 'creation_date')
