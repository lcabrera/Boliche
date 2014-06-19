# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

class Agenda(models.Model):
    id = models.IntegerField(primary_key=True)
    alias = models.CharField(max_length=250)
    nombre = models.CharField(max_length=250, blank=True)
    direccion1 = models.CharField(max_length=250, blank=True)
    direccion2 = models.CharField(max_length=250, blank=True)
    direccion3 = models.CharField(max_length=250, blank=True)
    telefono1 = models.CharField(max_length=9, blank=True)
    telefono2 = models.CharField(max_length=9, blank=True)
    telefono3 = models.CharField(max_length=9, blank=True)
    fax = models.CharField(max_length=9, blank=True)
    email1 = models.CharField(max_length=250, blank=True)
    email2 = models.CharField(max_length=250, blank=True)
    email3 = models.CharField(max_length=250, blank=True)
    persona1 = models.CharField(max_length=250, blank=True)
    persona2 = models.CharField(max_length=250, blank=True)
    persona3 = models.CharField(max_length=250, blank=True)
    class Meta:
        db_table = u'agenda'

class CategoriasProveedor(models.Model):
    id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=250)
    anotaciones = models.CharField(max_length=250, blank=True)
    class Meta:
        db_table = u'categorias_proveedor'

class Proveedores(models.Model):
    id = models.IntegerField(unique=True)
    rel_agenda = models.ForeignKey(Agenda, null=True, db_column='rel_agenda', blank=True)
    rel_categoria = models.ForeignKey(CategoriasProveedor, null=True, db_column='rel_categoria', blank=True)
    anotaciones = models.TextField(blank=True)
    class Meta:
        db_table = u'proveedores'

class Conceptos(models.Model):
    id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=250)
    anotaciones = models.CharField(max_length=250, blank=True)
    class Meta:
        db_table = u'conceptos'

class Movimientos(models.Model):
    id = models.IntegerField(primary_key=True)
    fecha_anotacion = models.DateField()
    fecha_factura = models.DateField()
    rel_proveedor = models.ForeignKey(Proveedores, db_column='rel_proveedor')
    rel_concepto = models.ForeignKey(Conceptos, db_column='rel_concepto')
    entrada_efectivo = models.DecimalField(null=True, max_digits=15, decimal_places=2, blank=True)
    entrada_via_banco = models.DecimalField(null=True, max_digits=15, decimal_places=2, blank=True)
    salida_efectivo = models.DecimalField(null=True, max_digits=15, decimal_places=2, blank=True)
    salida_via_banco = models.DecimalField(null=True, max_digits=15, decimal_places=2, blank=True)
    anotaciones = models.TextField(blank=True)
    class Meta:
        db_table = u'movimientos'

