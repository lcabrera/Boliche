#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.conf.urls import patterns, include, url
from django.conf import settings

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

# Import para usar los ficheros estáticos:
# (https://docs.djangoproject.com/en/dev/ref/contrib/staticfiles/#django.contrib.staticfiles.views.serve)
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

# TODO: Reorganizar mejor las direcciones.

urlpatterns = patterns('',

    #url(r'^', include('portada.urls')),
    # Examples:
    # url(r'^cafeteria/', include('cafeteria.foo.urls')),
    # url(r'^contacto/',  include('cafeteria.apps.contacto.urls')),
    # url(r'^$', 'cafeteria.views.index_view', name='portada'),
    url(r'^$', 'cafeteria.apps.portada.views.index_view', name='index'),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),


    # Contacto
    url(r'^contacto/$', 'cafeteria.apps.contacto.views.contacto'),
)

#if settings.DEBUG:
#    # FIXME Esto es lo documentado, pero no sirve media
#    #from django.contrib.staticfiles.urls import staticfiles_urlpatterns
#    #urlpatterns += staticfiles_urlpatterns()
#    urlpatterns += patterns('django.views.static',
#        url(r'^static/(.*)$',  'serve', {'document_root': settings.STATIC_ROOT, 'show_indexes': True}),
#        # url(r'^media/(.*)$',  'serve', {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
#    )

if settings.DEBUG:
    urlpatterns += staticfiles_urlpatterns()

