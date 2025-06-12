from django.db import models


class Roles(models.Model):
    role_id = models.AutoField(primary_key=True)
    role_name = models.CharField(max_length=50, blank=False, null=False, unique=True)

    def __str__(self):
        return self.role_name

    class Meta:
        managed = True
        db_table = 'roles'
