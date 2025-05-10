# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.contrib.auth.models import User
from nextera_API.nextera_blog.models import Articles, ReactionTypes

class ArticleReactions(models.Model):
    pk = models.CompositePrimaryKey('user', 'article')
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    article = models.ForeignKey(Articles, on_delete=models.CASCADE)
    reaction_type = models.ForeignKey(ReactionTypes, on_delete=models.CASCADE)
    reaction_date = models.DateTimeField(blank=False, null=False)
    update_date = models.DateTimeField(blank=False, null=False)

    class Meta:
        managed = True
        db_table = 'article_reactions'
        unique_together = (('user', 'article'),)
