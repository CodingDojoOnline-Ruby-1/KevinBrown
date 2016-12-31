from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'login$', views.login, name='login'),
    url(r'process_money$', views.process_money, name='process_money')
]
