#!/usr/bin/python
#  -*- coding:utf-8 -*-

from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import render_to_response
from . import opDB

# 表单
def search_book(request):
    return render_to_response('search_book.html')

# 接收请求数据
def search(request):
    request.encoding = 'utf-8'
    ans = {}
    if request.POST:
        ans = opDB.findData(request.POST['q'])
    # if 'q' in request.GET:
    #     message = opDB.findData(request.GET['q'])
        # message = '你搜索的内容为: ' + request.GET['q']
    else:
        ans = {}
    # ans['return_ans'] = message
    return render(request, "search-book.html", ans)

