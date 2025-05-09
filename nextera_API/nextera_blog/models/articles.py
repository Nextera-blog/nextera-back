# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.contrib.auth.models import User

class Articles(models.Model):
    article_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=255)
    content = models.TextField()
    creation_date = models.DateTimeField(blank=True, null=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    class Meta:
        managed = True
        db_table = 'articles'

# from nextera_API.nextera_blog.models.authors import Authors
# class Articles(models.Model):
#     article_id = models.AutoField(primary_key=True)
#     title = models.CharField(max_length=255)
#     content = models.TextField()
#     creation_date = models.DateTimeField(blank=True, null=True)
#     author = models.ForeignKey(Authors, on_delete=models.CASCADE)

#     class Meta:
#         managed = False
#         db_table = 'articles'


