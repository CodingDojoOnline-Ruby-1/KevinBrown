from django.shortcuts import render


def index(request):
    return render(request, 'vInMyMVC/index.html')

def show(request):
    print(request.method)
    return render(request, 'vInMyMVC/show_users.html')
