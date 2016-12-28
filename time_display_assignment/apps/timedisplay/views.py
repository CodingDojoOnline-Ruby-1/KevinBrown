from django.shortcuts import render, HttpResponse
import pytz, datetime
from django.utils import timezone

def index(request):
    currentDateTime = datetime.datetime.utcnow()
    inZoneDateTime = datetime.datetime.now()

    context = {
        'currentTime' : currentDateTime.strftime('%l:%M %p %Z'),
        'currentDate' : currentDateTime.strftime('%b. %d, %Y'),
        'inZoneTime' : inZoneDateTime.strftime('%l:%M %p %Z'),
        'inZoneDate': inZoneDateTime.strftime('%b. %d, %Y')
    }
    return render(request, 'index.html', context)
