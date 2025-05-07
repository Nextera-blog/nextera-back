# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class ArticleReactions(models.Model):
    pk = models.CompositePrimaryKey('user_id', 'article_id', 'reaction_type_id')
    user_id = models.IntegerField()
    article_id = models.IntegerField()
    reaction_type_id = models.IntegerField()
    reaction_date = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'article_reactions'
        unique_together = (('user_id', 'article_id', 'reaction_type_id'),)
