from django.contrib import admin
from .models import EmpList
# Register your models here.


@admin.register(EmpList)
class EmpListAdmin(admin.ModelAdmin):
    list_display = ('empid', 'name', 'position')
    ordering = ('empid',)
    search_fields = ('name', 'empid')
