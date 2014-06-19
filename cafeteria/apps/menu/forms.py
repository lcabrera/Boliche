#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""Leyendo de:
    http://www.maestrosdelweb.com/editorial/curso-django-los-formularios/
    http://www.cibernatural.com/tutorial-de-django-v
"""

from django import forms
from django.forms import ModelForm

from cafeteria.apps.menu.models import Menu, Receta, TiposDeMenu,TiposDeReceta
#from principal.models import Receta, Comentario

#class MenuDiarioForm(forms.Form):
#    """Formulario de entrada del menú diario."""

    # A custom empty label with string
#    fecha = forms.DateField(widget=SelectDateWidget(empty_label="Nothing"))
#    menu  = 

#    model


#class ContactoForm(forms.Form):
#
#    correo = forms.EmailField(label='Tu correo electrónico')
#    mensaje = forms.CharField(widget=forms.Textarea)


#class RecetaForm(ModelForm):
#
#
#    class Meta:
#
#        model = Receta


#class ComentarioForm(ModelForm):
#
#
#    class Meta:
#
#        model = Comentario


