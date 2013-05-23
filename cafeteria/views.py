#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.http import HttpResponse

def index(request):
    '''Ejemplo de vista básica.'''

    return HttpResponse("Hello, world. You’re at the poll index.")

