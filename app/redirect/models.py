from django.db import models


class Redirect(models.Model):
    alias = models.CharField(max_length=50, unique=True)
    target_url = models.URLField()
    create_datetime = models.DateTimeField(auto_now_add=True)
    update_datetime = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.alias
