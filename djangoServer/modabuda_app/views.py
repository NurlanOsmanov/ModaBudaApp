from django.shortcuts import render

def homepage(request):
    return render(request, 'modabuda_app/homepage.html')
# Create your views here.
