#!/usr/bin/env python
# -*- coding: utf-8 -*-

# List of callables that know how to import templates from various sources.

"""Orden de búsquedas de las plantillas.
"""

TEMPLATE_LOADERS = ('django.template.loaders.filesystem.Loader',
                    'django.template.loaders.app_directories.Loader')

#     'django.template.loaders.eggs.Loader',

