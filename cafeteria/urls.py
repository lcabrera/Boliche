from django.conf.urls import patterns, include, url
from views import *

urlpatterns = patterns('cafeteria.views',
    url(r'^$', 'index', name='index'),
)

