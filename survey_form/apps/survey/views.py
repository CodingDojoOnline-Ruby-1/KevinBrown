from django.shortcuts import render, redirect
from django import forms


def result(request):
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
