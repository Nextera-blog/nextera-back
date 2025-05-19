from django.db import models
from django.contrib.auth.models import User
from .articles import Articles
from .reaction_types import ReactionTypes

class ArticleReactions(models.Model):
    # pk = models.CompositePrimaryKey('user', 'article')
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    article = models.ForeignKey(Articles, on_delete=models.CASCADE)
    reaction_type = models.ForeignKey(ReactionTypes, on_delete=models.CASCADE)
    reaction_date = models.DateTimeField(blank=False, null=False, auto_now_add=True)
    update_date = models.DateTimeField(blank=False, null=False, auto_now=True)

    class Meta:
        managed = True
        db_table = 'article_reactions'
        unique_together = (('user', 'article'),)
