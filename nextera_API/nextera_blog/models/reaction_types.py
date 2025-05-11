from django.db import models


class ReactionTypes(models.Model):
    reaction_type_id = models.AutoField(primary_key=True)
    emoji = models.CharField(max_length=10, blank=False, null=False, unique=True)
    description = models.CharField(max_length=50, blank=False, null=False, unique=True)

    class Meta:
        managed = True
        db_table = 'reaction_types'
