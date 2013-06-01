#!/usr/bin/env python
# -*- coding: utf-8 -*-

# from django.http import HttpResponse

from django.shortcuts import render_to_response
from django.template import RequestContext

def index(request):
    '''Ejemplo de vista básica.'''
    context = {
        'listado': [],
    }
    return render_to_response('cafeteria/index.html', context, RequestContext(request))

# def plantilla_integrada(request):
#     html = "<html><head><title></title></head><body><p>Ejemplo de plantilla integrada.</p></body></html>"
#     return HttpResponse(html)
