from django.db import models
from django.contrib.auth.models import User
from .articles import Articles


class Comments(models.Model):
    comment_id = models.AutoField(primary_key=True)
    content = models.TextField(blank=False, null=False)
    creation_date = models.DateTimeField(blank=False, null=False, auto_now_add=True)
    update_date = models.DateTimeField(blank=False, null=False, auto_now=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=False, blank=False) # change to anonym user if deleted
    article = models.ForeignKey(Articles, on_delete=models.CASCADE, null=False, blank=False)
    parent_comment = models.ForeignKey(
        'self', 
        on_delete=models.CASCADE, 
        blank=True, 
        null=True, 
        related_name='comment_replies',
        help_text='comment response. Empty if no parent comment (article level).'
    )

    class Meta:
        managed = True
        db_table = 'comments'