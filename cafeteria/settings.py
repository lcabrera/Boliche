"""
Django settings for cafeteria project.

For more information on this file, see
https://docs.djangoproject.com/en/1.6/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.6/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
BASE_DIR = os.path.dirname(os.path.dirname(__file__))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.6/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'tby88_4^q@(fo_#uih$&divz9e4@3r(fpi(uv^pspm1!_)rzl)'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
)

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'cafeteria.urls'

WSGI_APPLICATION = 'cafeteria.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.6/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

# Internationalization
# https://docs.djangoproject.com/en/1.6/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.6/howto/static-files/

STATIC_URL = '/static/'


# Preparamos el entorno para cargar una configuracion personalizada:
import os

PROJECT_ROOT = os.path.dirname(os.path.abspath(os.path.dirname(__file__)))
PROJECT_NAME = 'cafeteria'

# Directorio donde poner recursos comunes
# a todos los desarrolladores:
for root, dirs, files in os.walk(os.path.join(PROJECT_ROOT, PROJECT_NAME +
    '/settings.d')):
    for f in sorted(files):
        full = os.path.join(PROJECT_ROOT, root, f)
        if os.path.isfile(full) and full.endswith(".py"):
            # print("[cafeteria/settings.d/]: " + f)
            exec(open(full).read())


# Directorio donde poner recursos no comunes, es decir, personales
# de cada uno de los desarrolladores:
for root, dirs, files in os.walk(os.path.join(PROJECT_ROOT, PROJECT_NAME +
    '/settings_local.d')):
    for f in sorted(files):
        full = os.path.join(PROJECT_ROOT, root, f)
        if os.path.isfile(full) and full.endswith(".py"):
            # print("[cafeteria/settings_local]: " + f)
            exec(open(full).read())

#if DEBUG:
#    print(("[settings.py]" + PROJECT_ROOT + os.sep + PROJECT_NAME))
#    print(("[settings.py] ROOT_PATH = " + os.path.dirname(__file__) + "." ))
