# encoding: utf8
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('menu', '0003_auto_20140611_1318'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='ref_receta',
            field=models.ForeignKey(null=True, to_field='id', help_text='Referencia al tipo de receta que estamos definiendo', blank=True, db_column='ref_receta', to='menu.Receta', verbose_name='Tipo de Receta'),
        ),
        migrations.AlterField(
            model_name='menu',
            name='fecha',
            field=models.DateField(null=True, auto_now=True, help_text='Fecha en la que va a ser servido este menú.'),
        ),
        migrations.AlterField(
            model_name='receta',
            name='nombre',
            field=models.CharField(unique=True, max_length=254, help_text='Nombre de la receta.', verbose_name='Nombre de la Receta'),
        ),
        migrations.AlterField(
            model_name='menu',
            name='ref_tipo_menu',
            field=models.ForeignKey(null=True, to_field='id', help_text='Referencia al tipo de menú', blank=True, db_column='ref_tipo_menu', to='menu.TiposDeMenu', verbose_name='Ref. al Tipo de Menú'),
        ),
    ]
