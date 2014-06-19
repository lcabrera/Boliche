# encoding: utf8
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='TiposDeReceta',
            fields=[
                ('id', models.IntegerField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(max_length=254, blank=True)),
            ],
            options={
                'db_table': 'tipos_de_receta',
                'managed': True,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Receta',
            fields=[
                ('id', models.IntegerField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(max_length=254)),
                ('ref_tipo', models.IntegerField()),
            ],
            options={
                'db_table': 'receta',
                'managed': True,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='TiposDeMenu',
            fields=[
                ('id', models.IntegerField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(max_length=254, blank=True)),
            ],
            options={
                'db_table': 'tipos_de_menu',
                'managed': True,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Menu',
            fields=[
                ('id', models.IntegerField(serialize=False, primary_key=True)),
                ('fecha', models.DateField(null=True, blank=True)),
                ('ref_receta', models.ForeignKey(null=True, blank=True, db_column='ref_receta', to_field='id', to='menu.Receta')),
                ('ref_tipo_menu', models.ForeignKey(null=True, blank=True, db_column='ref_tipo_menu', to_field='id', to='menu.TiposDeMenu')),
            ],
            options={
                'db_table': 'menu',
                'managed': True,
            },
            bases=(models.Model,),
        ),
    ]
