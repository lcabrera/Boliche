#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.shortcuts import render

# Create your views here.

from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm, \
    AuthenticationForm
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.models import User
from django.core.mail import EmailMessage
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext

from cafeteria.apps.contacto.form import ContactoForm


def contacto(request):
    """Vista para el formulario de contacto."""

    errors = []

    if request.method == 'POST':
        formulario = ContactoForm(request.POST)

        if request.POST.get('correo') and '@' not in request.POST['correo']:
            errors.append('Introduzca una dirección de correo válida.')

        if not request.POST.get('mensaje', ''):
            errors.append('No has adjuntado ningún contenido...')

        if formulario.is_valid():
            titulo = 'Mensaje desde el formulario de contacto'
            contenido = formulario.cleaned_data['mensaje'] + '\n\n'
            contenido += '\tEnviado por: ' \
                + formulario.cleaned_data['correo']
            correo = EmailMessage(
                    titulo,
                    contenido,
                    to=['icorrecam@gmail.com'])
            correo.send()

            return HttpResponseRedirect('/')
    else:
        formulario = ContactoForm()

    return render_to_response(
            'contactoform.html',
            {'formulario': formulario},
            context_instance=RequestContext(request))

