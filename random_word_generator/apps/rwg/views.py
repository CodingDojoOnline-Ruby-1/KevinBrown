from django.shortcuts import render, HttpResponse

def index(request):
    context = {
        'currentTime' : currentDateTime.strftime('%l:%M %p %Z'),
        'currentDate' : currentDateTime.strftime('%b. %d, %Y'),
        'inZoneTime' : inZoneDateTime.strftime('%l:%M %p %Z'),
        'inZoneDate': inZoneDateTime.strftime('%b. %d, %Y')
    }
    return render(request, 'index.html', context)
