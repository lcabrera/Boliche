# encoding: utf8
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('menu', '0006_auto_20140618_1559'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='ref_receta',
            field=models.ForeignKey(blank=True, to='menu.Receta', verbose_name='Tipo de Receta', null=True, db_column='ref_receta', to_field='id', help_text='Referencia al tipo de receta que estamos                         definiendo'),
        ),
    ]
