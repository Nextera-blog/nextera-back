from django.db import models


class Roles(models.Model):
    role_id = models.AutoField(primary_key=True)
    role_name = models.CharField(max_length=50, blank=False, null=False, unique=True)

    class Meta:
        managed = True
        db_table = 'roles'
