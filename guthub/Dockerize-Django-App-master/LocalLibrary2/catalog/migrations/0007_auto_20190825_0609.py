# Generated by Django 2.2.3 on 2019-08-25 13:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0006_auto_20190821_0126'),
    ]

    operations = [
        migrations.AlterField(
            model_name='author',
            name='date_of_death',
            field=models.DateField(blank=True, help_text='YYYY-MM-D', null=True, verbose_name='died'),
        ),
    ]
