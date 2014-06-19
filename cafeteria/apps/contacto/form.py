#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""Leyendo de:
    http://www.maestrosdelweb.com/editorial/curso-django-los-formularios/
    http://www.cibernatural.com/tutorial-de-django-v
"""

from django import forms
from django.forms import ModelForm

class ContactoForm(forms.Form):
    '''Formulario de contacto sin usar tablas.'''

    correo = forms.EmailField(
            label='Correo Electrónico',
            initial='user@example.com',
            # help_text="Dirección de correo electrónico.")
            help_text='')

    mensaje = forms.CharField(
            label='Mensaje',
            initial='Pon tu mensaje aquí ...',
            widget=forms.Textarea,
            # help_text="Texto que se quiere enviar.")
            help_text='')

    #tiempo_registro = models.DateTimeField(auto_now=True)

