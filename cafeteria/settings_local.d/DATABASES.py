# -*- coding: utf-8 -*-

'''Datos de acceso a la base de datos.

En el nombre de la base de datos debe ir la ruta absoluta completa de
la base de datos, en el caso de Windows debe ir entre comillas.'''

# Desarrollo
# ~~~~~~~~~~
if DEBUG and not PRODUCCION:
    print("[DATABASES.py] Estamos en desarrollo.")
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.sqlite3',         # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
            'NAME': os.path.join(
                    PROJECT_ROOT,
                    PROJECT_NAME + os.sep + PROJECT_NAME + '_dev.db' ),
                                                            # Or path to database file if using sqlite
            'USER': '',                                     # Not used with sqlite3.
            'PASSWORD': '',                                 # Not used with sqlite3.
            'HOST': '',                                     # Set to empty string for localhost. Not used with sqlite3.
            'PORT': '',                                     # Set to empty string for default. Not used with sqlite3.
        },
        #'default': {
        #    'ENGINE': 'django.db.backends.postgresql_psycopg2',
        #    'NAME': 'Boliche',
        #    'USER': 'lcabrera',
        #    'PASSWORD': 'eelpcdpsql',
        #    'HOST': '172.16.0.10',
        #    'PORT': '5432',
        #},
    }
# Beta
# ~~~~
elif DEBUG and PRODUCCION:
    print("[DATABASES.py] Estamos en Beta / Pruebas.")
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.',                # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
            'NAME': os.path.join(
                    PROJECT_ROOT,
                    PROJECT_NAME + os.sep + PROJECT_NAME + '_beta.db' ),
                                                            # Or path to database file if using sqlite
            'USER': '',                                     # Not used with sqlite3.
            'PASSWORD': '',                                 # Not used with sqlite3.
            'HOST': '',                                     # Set to empty string for localhost. Not used with sqlite3.
            'PORT': '',                                     # Set to empty string for default. Not used with sqlite3.
        }
    }

# Producción
# ~~~~~~~~~~
elif not DEBUG and PRODUCCION:
    print("[DATABASES.py] Estamos en producción.")
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.sqlite3',         # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
            'NAME': os.path.join(
                    PROJECT_ROOT,
                    PROJECT_NAME + os.sep + PROJECT_NAME + '_prod.db' ),
                                                            # Or path to database file if using sqlite
            'USER': '',                                     # Not used with sqlite3.
            'PASSWORD': '',                                 # Not used with sqlite3.
            'HOST': '',                                     # Set to empty string for localhost. Not used with sqlite3.
            'PORT': '',                                     # Set to empty string for default. Not used with sqlite3.
        }
    }
else:
    print("No se ha cargado la configuración de las Bases de Datos...")

