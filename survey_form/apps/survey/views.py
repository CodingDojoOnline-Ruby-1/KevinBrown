from django.shortcuts import render, redirect
from django import forms


def result(request):
    request.session.ninjaName = request.POST['ninjaName']
    request.session.dojoLocation = request.POST['dojoLocation']
    request.session.programmingLanguage = request.POST['programmingLanguage']
    request.session.ninjaComment = request.POST['ninjaComment']
    return render(request, 'result.html')


def index(request):
    try:
        request.session['counter'] = int(request.session['counter']) + 1
    except:
        request.session['counter'] = 1
    return render(request, 'index.html')


# def index(request):
#     request.session['counter'] = 0
#     return redirect('input')
