from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
def index(request):
    data = {
        'name': 'Dung',
        'location': 'VietName',
        'is_active': False,
        'age': 21
    }
    return JsonResponse(data)
