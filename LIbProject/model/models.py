from django.db import models

# Create your models here.
class userinfo(models.Model):
    studentID = models.CharField(max_length=255,primary_key=True)
    college = models.CharField(max_length=255)
    peopleKind = models.CharField(max_length=255)
    user_name = models.CharField(max_length=255)
    password = models.CharField(max_length=255)

class borrow_data(models.Model):
    Chargehist_User_Id = models.CharField(max_length=255)
    Chargehist_User_Name = models.CharField(max_length=255)
    History_Title = models.CharField(max_length=255)
    studentID = models.CharField(max_length=255,primary_key=True)
    college = models.CharField(max_length=255)
    date = models.DateField()
    peopleKind = models.CharField(max_length=255)

class book_edge(models.Model):
    book_1 = models.CharField(max_length=255)
    book_2 = models.CharField(max_length=255)
    History_Title = models.CharField(max_length=255,primary_key=True)
    book_3 = models.CharField(max_length=255)

