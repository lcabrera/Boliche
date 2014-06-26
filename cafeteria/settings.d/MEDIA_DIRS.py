#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''Absolute filesystem path to the directory that will hold user-uploaded files.

Example: "/home/media/media.lawrence.com/media/"

'''
if DEBUG and not PRODUCCION:
    MEDIA_ROOT = os.path.join(PROJECT_ROOT,'media')
elif DEBUG and PRODUCCION:
    # MEDIA_ROOT = '/var/www/fjn_beta/media'
    MEDIA_ROOT = os.path.join(PROJECT_ROOT,'media')
else:
    # MEDIA_ROOT = '/var/www/fjn_prod/media'
    MEDIA_ROOT = os.path.join(PROJECT_ROOT,'media')

'''URL that handles the media served from MEDIA_ROOT. Make sure to use a trailing slash.

Examples: "http://media.lawrence.com/media/", "http://example.com/media/"

'''

MEDIA_URL = '/media/'

