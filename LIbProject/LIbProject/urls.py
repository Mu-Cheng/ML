"""LIbProject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import *
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from . import view,opDB,search,settings

urlpatterns = [
    url(r'^$',view.hello),
    url(r"^opDB",opDB.findData),
    url(r'^admin/', admin.site.urls),
    url(r'^search-book',search.search),
    url(r'^search$',search.search),
    # url(r'^index/$',"blog.views.index"),
    # url(r'^static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.STATIC_ROOT}),
]+ static(settings.STATIC_URL, document_root = settings.STATIC_ROOT)
