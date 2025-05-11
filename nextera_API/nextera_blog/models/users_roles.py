from django.db import models
from django.contrib.auth.models import User
from .roles import Roles

class UsersRoles(models.Model):
    # pk = models.CompositePrimaryKey('user_id', 'role_id')
    user = models.OneToOneField(User, on_delete=models.CASCADE, blank=False, null=False)
    role = models.ForeignKey(Roles, on_delete=models.CASCADE, blank=False, null=False)

    class Meta:
        managed = True
        db_table = 'users_roles'
        unique_together = (('user', 'role'),)