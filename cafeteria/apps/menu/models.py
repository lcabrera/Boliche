#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [app_label]'
# into your database.
"""

from __future__ import unicode_literals

from django.db import models

class TiposDeReceta(models.Model):
    """Modelo que define los tipos de recetas que despachamos.
    """
    #id     = models.IntegerField(
    #            primary_key=True,
    #            unique=True)  # AutoField?

    nombre = models.CharField(
                'Nombre',
                max_length=254,
                blank=False)

    #def __str__(self):
    #    ''' '''
    #    tipodereceta = "%s" % (self.nombre)
    #    return tipodereceta

    class Meta:
        managed = True
        db_table = 'tipos_de_receta'


class TiposDeMenu(models.Model):
    """Modelo que define los tipos de menú que despachamos.
    """
    #id     = models.IntegerField(
    #            primary_key=True,
    #            unique=True)  # AutoField?

    nombre = models.CharField(
                'Nombre',
                max_length=254,
                blank=False)

    #def __str__(self):
    #    ''' '''
    #    tipodemenu = "%s" % (self.nombre)
    #    return tipodemenu

    class Meta:
        managed = True
        db_table = 'tipos_de_menu'


class Receta(models.Model):
    """Modelo que define las recetas que estamos manejando en los menús.
    """
    #id       = models.IntegerField(
    #                primary_key=True,
    #                unique=True)  # AutoField?

    nombre   = models.CharField(
                    'Nombre',
                    unique=True,
                    max_length=254,
                    #verbose_name="Nombre de la Receta",
                    help_text="Nombre de la receta.")

    ref_tipo = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'receta'


class Menu(models.Model):
    """Modelo que define cuando ha de ser servidor un determinado plato.
    """
    #id            = models.IntegerField(
    #                primary_key=True,
    #                unique=True)  # AutoField?

    fecha         = models.DateField(
                    'Fecha',
                    blank=True,
                    null=True,
                    auto_now=True,
                    help_text="Fecha en la que va a ser servido este menú.")

    ref_receta    = models.ForeignKey(
                    'Receta',
                    db_column='ref_receta',
                    blank=True,
                    null=True,
                    verbose_name="Tipo de Receta",
                    help_text="Referencia al tipo de receta que estamos definiendo")

    ref_tipo_menu = models.ForeignKey(
                    'TiposDeMenu',
                    db_column='ref_tipo_menu',
                    blank=True,
                    null=True,
                    verbose_name="Ref. al Tipo de Menú",
                    help_text="Referencia al tipo de menú")

    class Meta:
        managed = True
        db_table = 'menu'


