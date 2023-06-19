from django.shortcuts import render

#add httpresponse module
from django.http import HttpResponse

# Create your views here.
def home(request):
    return render(request,'home.html')