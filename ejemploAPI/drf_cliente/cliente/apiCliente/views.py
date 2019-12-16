from django.shortcuts import render
import requests
# Create your views here.

def home(request):
    response= requests.get("http://localhost:8000/superheroe/1/")
    datos=response.json()
    return render(request,'core/pag.html',{'nombre':datos['name'],'datos':datos})

def ListadoSuper(request):
    response= requests.get("http://localhost:8000/superheroe/")
    lista= response.json()    
    return render(request,'core/pagL.html',{'lista':lista['results']})

def ModificarSE(request):
    mensaje=''
    if request.POST:
        payload = {'id':5,'name': 'HULK','gender':'male','real_name':'DAVID BANNER','publisher':1}
        r = requests.put("http://localhost:8000/superheroe/5/",data=payload)                
        return render(request,'core/pagM.html',{'mensaje':r})

    return render(request,'core/pagM.html',{'mensaje':'presione para modificar'})

def EliminarSE(request):
    mensaje=''
    if request.POST:
        id= request.POST.get('txtId','')
        confirmar= request.POST['btnOK']
        if confirmar == "BU" and id != None:
            response= requests.get("http://localhost:8000/superheroe/"+id+"/")
            datos=response.json()
            codigo=datos['name']
            return render(request,'core/pagESE.html',{'mensaje':'encontro','id':id,'estado':1})
        if confirmar == 'OK':
            requests.delete("http://localhost:8000/superheroe/"+id+"/") 
            codigo=requests.status_codes       
            return render(request,'core/pagESE.html',{'mensaje':'elimino'})
        
    mensaje="Ingrese id super heroe a eliminar"
    return render(request,'core/pagESE.html',{'mensaje':mensaje})