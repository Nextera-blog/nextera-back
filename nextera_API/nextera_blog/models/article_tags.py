from django.db import models
from .articles import Articles
from .tags import Tags


class ArticleTags(models.Model):
    article = models.ForeignKey(Articles, on_delete=models.CASCADE)
    tag = models.ForeignKey(Tags, on_delete=models.CASCADE)

    class Meta:
        managed = True
        db_table = 'article_tags'
        unique_together = (('article', 'tag'),)