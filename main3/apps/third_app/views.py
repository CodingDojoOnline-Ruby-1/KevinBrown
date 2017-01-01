from django.shortcuts import render
from .models import People

# Create your views here.
def index(request):
    People.objects.create(first_name = "Kevin", last_name = "Brown")
    context = {}
    context['people']= People.objects.all()
    print (context['people'])
    # request.session['people'] = people
    return render(request, "third_app/index.html", context)
