from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [    
    path('',views.home,name='hom'),
    path('ls/',views.ListadoSuper,name='ls'),
    path('es/',views.EliminarSE,name='es'),
    path('ms/',views.ModificarSE,name='ms'),
]
