#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''
# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.
'''

from django.db import models


class Unidades(models.Model):

    id = models.IntegerField(unique=True)
    nombre = models.CharField(max_length=255, blank=True)
    alias = models.CharField(max_length=255, blank=True)

    def __unicode__(self):
        nombre = '%s' % self.nombre
        return nombre


    class Meta:

        db_table = u'unidades'


class Recetas(models.Model):

    id = models.IntegerField(unique=True)
    nombre = models.CharField(max_length=255, blank=True)
    tiempo_preparacion = models.TimeField(null=True, blank=True)
    n_comensales = models.IntegerField()
    dificultad = models.IntegerField()
    ref_ingredientes = models.IntegerField()
    requisitos = models.CharField(max_length=255, blank=True)
    ref_pasos = models.IntegerField()
    foto = models.CharField(max_length=255, blank=True)
    comentario = models.CharField(max_length=255, blank=True)

    def __unicode__(self):
        nombreCompleto = '%s' % self.nombre
        return nombreCompleto


    class Meta:

        db_table = u'recetas'


class Alimentos(models.Model):

    id = models.IntegerField(unique=True)
    nombre = models.CharField(max_length=255, blank=True)
    alias = models.CharField(max_length=255, blank=True)
    peligroso = models.BooleanField()
    precio_unidad = models.DecimalField(null=True, max_digits=3,
            decimal_places=2, blank=True)

    def __unicode__(self):
        nombre = '%s' % self.nombre
        return nombre


    class Meta:

        db_table = u'alimentos'


class Pasos(models.Model):

    id = models.IntegerField(unique=True)
    ref_receta = models.ForeignKey(Recetas, db_column='ref_receta')
    orden = models.IntegerField()
    descripcion = models.CharField(max_length=255, blank=True)

    def __unicode__(self):
        descripcion = '%s' % self.descripcion
        return descripcion


    class Meta:

        db_table = u'pasos'


class Ingredientes(models.Model):

    id = models.IntegerField(unique=True)
    ref_receta = models.ForeignKey(Recetas, db_column='ref_receta')
    ref_unidades = models.ForeignKey(Unidades, db_column='ref_unidades')
    ref_alimentos = models.ForeignKey(Alimentos,
            db_column='ref_alimentos')

#    def __unicode__(self):
#        descripcion = "%s" % (self.descripcion)


    class Meta:

        db_table = u'ingredientes'

