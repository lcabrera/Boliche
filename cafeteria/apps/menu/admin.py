from django.contrib import admin

# Register your models here.

from cafeteria.apps.menu.models import Menu, Receta, TiposDeMenu, TiposDeReceta

admin.site.register(Menu)
admin.site.register(Receta)
admin.site.register(TiposDeMenu)
admin.site.register(TiposDeReceta)

