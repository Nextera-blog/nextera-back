from django.db import models
from django.contrib.auth.models import User
from .tags import Tags
# from .article_tags import ArticleTags

class Articles(models.Model):
    article_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=250, blank=False, null=False, unique=True)
    content = models.TextField(blank=False, null=False)
    creation_date = models.DateTimeField(blank=False, null=False, auto_now_add=True)
    update_date = models.DateTimeField(blank=False, null=False, auto_now=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE) # change to anonym user if deleted
    tags = models.ManyToManyField(Tags, through='ArticleTags', related_name='articles')

    class Meta:
        managed = True
        db_table = 'articles'


