from django.db import models
from django.contrib.auth.models import User


class Authors(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True, related_name='author_profile')
    name = models.CharField(max_length=100, blank=False, null=False, unique=True)
    bio = models.TextField(blank=True, null=True)
    profile_picture_url = models.CharField(max_length=250, blank=True, null=True)
    join_date = models.DateTimeField(blank=False, null=False, auto_now_add=True)

    class Meta:
        managed = True
        db_table = 'authors'
