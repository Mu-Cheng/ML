# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-06-25 10:10
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('model', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='userinfo',
            name='id',
        ),
        migrations.AlterField(
            model_name='userinfo',
            name='studentID',
            field=models.CharField(max_length=255, primary_key=True, serialize=False),
        ),
    ]
