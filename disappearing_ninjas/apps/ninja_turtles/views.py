from django.shortcuts import render

# Create your views here.
def ninjas(request, color):
    if color not in('blue', 'orange', 'red', 'purple'):
        return render(request, 'route_fail.html')
    htmlfile = color+'.html'
    return render(request, htmlfile)

# def blue(request):
#     return rendor(request, 'blue.html')
#
# def orange(request):
#     return rendor(request, 'orange.html')
#
# def purple(request):
#     return rendor(request, 'purple.html')
#
# def red(request):
#     return rendor(request, 'red.html')

def index(request):
    return render(request, 'index.html')
