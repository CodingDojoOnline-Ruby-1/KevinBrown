from django.shortcuts import render, HttpResponse
import datetime


def index(request):
    # currentTime = datetime.datetime.now()
    #currentDateTime = ("%s/%s/%s" % (currentTime.day, currentTime.month, currentTime.year)) + (" %s:%s:%s" % (currentTime.hour, currentTime.month, currentTime.second))
    #context={ "currentDateTime":currentDateTime }
    return render(request, 'timedisplay/index.html', context)
