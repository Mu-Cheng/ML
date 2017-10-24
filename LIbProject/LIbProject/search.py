#!/usr/bin/python
#  -*- coding:utf-8 -*-

from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import render_to_response
from django.core.paginator import Paginator ,PageNotAnInteger ,EmptyPage

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

    # book_list = ans['ans_list']
    # paginator = Paginator(book_list, 10)
    #
    # try:pow
    #     # 尝试获取请求的页数的 产品信息
    #     goodss = paginator.page(int(page))
    #     # 请求页数错误
    # except PageNotAnInteger:
    #     goodss = paginator.page(1)
    # except EmptyPage:
    #     goodss = paginator.page(paginator.num_pages)

    # ans['ans_list'] = goodss

    return render(request, "search-book.html", ans)

