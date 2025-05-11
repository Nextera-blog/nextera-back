from django.db import models

class Tags(models.Model):
    tag_id = models.AutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=50)

    class Meta:
        managed = True
        db_table = 'tags'