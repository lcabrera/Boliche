# encoding: utf8
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('menu', '0005_auto_20140618_1355'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tiposdemenu',
            name='nombre',
            field=models.CharField(max_length=254, verbose_name='Nombre'),
        ),
    ]
