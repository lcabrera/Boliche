# encoding: utf8
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('menu', '0002_auto_20140610_1453'),
    ]

    operations = [
        migrations.AlterField(
            model_name='receta',
            name='id',
            field=models.IntegerField(unique=True, serialize=False, primary_key=True),
        ),
        migrations.AlterField(
            model_name='tiposdereceta',
            name='id',
            field=models.IntegerField(unique=True, serialize=False, primary_key=True),
        ),
        migrations.AlterField(
            model_name='menu',
            name='id',
            field=models.IntegerField(unique=True, serialize=False, primary_key=True),
        ),
        migrations.AlterField(
            model_name='tiposdemenu',
            name='id',
            field=models.IntegerField(unique=True, serialize=False, primary_key=True),
        ),
    ]
