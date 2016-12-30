from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name = "index"),
    url(r'^(?P<color>\w+)$', views.ninjas, name = "ninjas"),
    # url(r'^orange$', views.result, name = "result")
    # url(r'^red$', views.result, name = "result")
    # url(r'^purple$', views.result, name = "result")
    # one route not 5 separate routes
]
