#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.shortcuts import render

# Create your views here.

from django.shortcuts import render_to_response
from django.template  import RequestContext


def index_view(request):
    '''Ejemplo de vista b\xc3\xa1sica.'''

    return render_to_response('base.html',
                              context_instance=RequestContext(request))


