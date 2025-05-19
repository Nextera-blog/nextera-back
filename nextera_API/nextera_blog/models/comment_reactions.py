from django.db import models
from django.contrib.auth.models import User
from .comments import Comments
from .reaction_types import ReactionTypes

class CommentReactions(models.Model):
    # pk = models.CompositePrimaryKey('user', 'comment')
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    comment = models.ForeignKey(Comments, on_delete=models.CASCADE)
    reaction_type = models.ForeignKey(ReactionTypes, on_delete=models.CASCADE)
    reaction_date = models.DateTimeField(blank=False, null=False, auto_now_add=True)
    update_date = models.DateTimeField(blank=False, null=False, auto_now=True)

    class Meta:
        managed = True
        db_table = 'comment_reactions'
        unique_together = (('user', 'comment'),)
