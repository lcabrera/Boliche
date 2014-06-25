#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''Absolute path to the directory static files should be collected to.

Don't put anything  in this directory yourself; store  your static files
in apps' "static/" subdirectories and in STATICFILES_DIRS.

Example: "/home/media/media.lawrence.com/static/"

'''
import os

from django.conf import settings as CONFIGURACION

DEBUG = CONFIGURACION.DEBUG
PRODUCCION = CONFIGURACION.PRODUCCION
#PROJECT_ROOT = os.path.dirname(os.path.abspath(os.path.dirname(__file__)))


if DEBUG and not PRODUCCION:
    STATIC_ROOT = os.path.join(PROJECT_ROOT, 'static')
elif DEBUG and PRODUCCION:
    #STATIC_ROOT = '/var/www/fjn_beta/static'
    STATIC_ROOT = os.path.join(PROJECT_ROOT, 'static')
else:
    #STATIC_ROOT = '/var/www/fjn_prod/static'
    STATIC_ROOT = os.path.join(PROJECT_ROOT, 'static')

STATIC_URL = '/static/'
STATICFILES_DIRS = (os.path.join(PROJECT_ROOT, 'static/'),)

# Para Depurar:
# ~~~~~~~~~~~~~
if DEBUG:
    print(("[STATIC_DIR.py] STATIC_ROOT = %s" % STATIC_ROOT))
    print(("[STATIC_DIR.py] STATIC_URL = %s" % STATIC_URL))
    print(("[STATIC_DIR.py] STATICFILES_DIRS = %s" % STATICFILES_DIRS))
    print(("[STATIC_DIR.py] DEBUG = " + str(DEBUG)))
    print(("[STATIC_DIR.py] PRODUCCION = " + str(PRODUCCION)))
    print(("[STATIC_DIR.py] PROJECT_ROOT = " + PROJECT_ROOT))