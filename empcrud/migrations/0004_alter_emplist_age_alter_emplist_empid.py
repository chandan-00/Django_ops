# Generated by Django 4.0.5 on 2022-07-14 10:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('empcrud', '0003_alter_emplist_empid'),
    ]

    operations = [
        migrations.AlterField(
            model_name='emplist',
            name='age',
            field=models.PositiveIntegerField(max_length=4),
        ),
        migrations.AlterField(
            model_name='emplist',
            name='empid',
            field=models.PositiveIntegerField(max_length=4),
        ),
    ]
