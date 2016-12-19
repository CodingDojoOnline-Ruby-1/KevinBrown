from django.shortcuts import render, HttpResponse
from django.utils import timezone
import datetime


# Create your views here.
def index(request):
    context = {
        'currentTime' : datetime.datetime.now()
    }
    return render(request, 'index.html', context)
