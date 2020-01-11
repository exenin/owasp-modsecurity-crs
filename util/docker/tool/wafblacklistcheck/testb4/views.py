from django.shortcuts import render, redirect
from django.http import HttpResponse

import pydig
import os

# Create your views here.

def redirector(request, host):
    #test host ip in blacklist check
    lookuplist = pydig.query(host, 'A')

    blacklist=os.getenv('BLACKLIST')
    if ',' in blacklist:
        blacklist = blacklist.split(',')
        

    for ip in lookuplist:
        if ip in blacklist:
            return HttpResponse('1')
    uri = ''
    if request.GET.get('uri'):
        uri = request.GET.get('uri')

    url = "http://" + host + "/" + uri
    return redirect(url)
        
