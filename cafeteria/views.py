#!/usr/bin/env python
# -*- coding: utf-8 -*-

# from django.http import HttpResponse

from django.shortcuts import render_to_response
from django.template import RequestContext


def index_view(request):
    '''Ejemplo de vista básica.'''

    # return HttpResponse("Hello, world. You’re at the poll index.")

    # html = "<html><head><title></title></head><body><p>Ejemplo de plantilla integrada.</p></body></html>"
    # return HttpResponse(html)

    # return render_to_response('index.html', {’latest_poll_list’: latest_poll_list})

    return render_to_response('base.html',
                              context_instance=RequestContext(request))


