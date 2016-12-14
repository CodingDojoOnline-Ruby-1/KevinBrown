from django.shortcuts import render, HttpResponse
def yourMethodFromUrls(request):
    context = {
    "somekey":"somevalue"
    }
    return render(request,'appname/page.html', context)
