# encoding: utf8
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('menu', '0004_auto_20140613_1312'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tiposdemenu',
            name='id',
            field=models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True),
        ),
        migrations.AlterField(
            model_name='tiposdemenu',
            name='nombre',
            field=models.CharField(max_length=254, verbose_name='Nombre', blank=True),
        ),
        migrations.AlterField(
            model_name='menu',
            name='fecha',
            field=models.DateField(help_text='Fecha en la que va a ser servido este menú.', auto_now=True, null=True, verbose_name='Fecha'),
        ),
        migrations.AlterField(
            model_name='tiposdereceta',
            name='nombre',
            field=models.CharField(max_length=254, verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='receta',
            name='id',
            field=models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True),
        ),
        migrations.AlterField(
            model_name='tiposdereceta',
            name='id',
            field=models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True),
        ),
        migrations.AlterField(
            model_name='menu',
            name='id',
            field=models.AutoField(auto_created=True, serialize=False, verbose_name='ID', primary_key=True),
        ),
        migrations.AlterField(
            model_name='receta',
            name='nombre',
            field=models.CharField(help_text='Nombre de la receta.', max_length=254, unique=True, verbose_name='Nombre'),
        ),
    ]
