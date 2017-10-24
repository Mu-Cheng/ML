#!/usr/bin/python
#  -*- coding:utf-8 -*-

class Singleton(object):
    _instance = None
    def __new__(cls, *args, **kw):
        if not cls._instance:
            cls._instance = super(Singleton, cls).__new__(cls, *args, **kw)
        return cls._instance

class SingletonData(Singleton):
    __a__ = 1
    ans = {}