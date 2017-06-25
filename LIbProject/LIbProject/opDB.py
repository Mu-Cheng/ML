#!/usr/bin/python
#  -*- coding:utf-8 -*-

from django.http import HttpResponse

import random

from model.models import userinfo,borrow_data,book_edge

def findData(studentID):
    # 初始化
    response = ""

    # print("findData+++++++++++")

    # 通过objects这个模型管理器的all()获得所有数据行，相当于SQL中的SELECT * FROM
    # list = userinfo.objects.all()
    # print(list['studentID'])

    # filter相当于SQL中的WHERE，可设置条件过滤结果
    # studentID = '20141534'
    response2 = borrow_data.objects.filter(studentID=studentID).values()

    # 获取单个对象
    # response3 = UserInfo.objects.get(id=1)

    # 限制返回的数据 相当于 SQL 中的 OFFSET 0 LIMIT 2;
    # UserInfo.objects.order_by('name')[0:2]

    # 数据排序
    # UserInfo.objects.order_by("id")

    # 上面的方法可以连锁使用
    # UserInfo.objects.filter(name="runoob").order_by("id")

    # 输出所有数据
    # for var in list:
    #     response1 += var.studentID + " "

    # response = response1
    ans = {}
    books = []
    ans['data1'] = studentID+"借阅过的书籍为："
    # response1 = "<h1>"+studentID+"借阅过的书籍为："+"</h1>"
    ans['borrow_list'] = []
    for i in response2:
        ans['borrow_list'].append(i["History_Title"])
        # response1 = response1 + str(i["History_Title"]) + "</br>"
        temp = book_edge.objects.filter(History_Title=i["History_Title"]).values()
        for j in temp:
            for k in range(1,4):
                str1 = j["book_"+str(k)]
                strli = str1.split(',')
                for t in strli:
                    books.append(t)
    lenBook = len(books)
    ans['data2'] = "为"+studentID + "推荐的书籍为："
    # response1 = response1 + "<h2>为" + studentID + "推荐的书籍为：" + "</h2>"
    num = 10
    if lenBook < num:
        num = lenBook
    ans['ans_list'] = []
    i = num - 1
    while i != -1:
        book = books[i]
        ans['ans_list'].append(book)
        i = i - 1
    # for i in range(num):
    #     book = books[random.randint(0,num-1)]
    #     ans['ans_list'].append(book)
        # response1 = response1 + str(book) + "</br>"
    # return "<p>" + response1+ "</p>"
    return ans