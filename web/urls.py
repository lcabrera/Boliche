# -*- coding: utf-8 -*-

from django.conf.urls import patterns, include, url
from django.conf import settings

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',

    url(r'^', include('cafeteria.urls')),
    # Examples:
    # url(r'^cafeteria/', include('cafeteria.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)

if settings.DEBUG:
    # FIXME Esto es lo documentado, pero no sirve media
    #from django.contrib.staticfiles.urls import staticfiles_urlpatterns
    #urlpatterns += staticfiles_urlpatterns()
    urlpatterns += patterns('django.views.static',
        url(r'^static/(.*)$',  'serve', {'document_root': settings.STATIC_ROOT, 'show_indexes': True}),
        url(r'^media/(.*)$',  'serve', {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
    )

