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


class MenuDiario(models.Model):

    id = models.IntegerField(unique=True)
    fecha = models.DateField()
    nombre = models.CharField(max_length=255, blank=True)
    importe = models.IntegerField()
    foto = models.CharField(max_length=255, blank=True)
    comentario = models.CharField(max_length=255, blank=True)
    activo = models.IntegerField(null=True, blank=True)

    def __unicode__(self):
        nombre = '%s: %s' % (self.fecha, self.nombre)
        return nombre

    class Meta:

        db_table = u'menu_diario'

