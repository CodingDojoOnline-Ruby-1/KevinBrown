from __future__ import unicode_literals

from django.db import models

# Create your models here.
class RandomWord(models.Model):
    word = models.CharField(max_length=14)


# We want to have sql tables that match our data
# Fisst wwe describe the data we want using models.py
# Add our fields
# We run python manage.py makemigrations
# Django looks for new changes to all models.pys
# If a new changes are found, then turn into a migration file.
# A migration file is the differenece of changes that need to be applied
# In some cases it means create a new tabvle, or alters colums on that tables
# then using python manage.pys migrate  we can apply those changes.
# migrate againg looks through for any new migration files. If found, it turns the migarrtion file into proper sql for the the database type.
