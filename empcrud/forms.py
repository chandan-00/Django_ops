from django import forms
from django.forms import ModelForm
from .models import EmpList


class EmployeeList(ModelForm):
    class Meta:
        model = EmpList
        fields = ('empid', 'name', 'position', 'age', 'emp_image',)
        labels = {
            'empid': 'Enter details',
            'name': '',
            'position': '',
            'age': '',
            'emp_image': 'Add your image',
        }
        widgets = {
            'empid': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Employee ID', }),
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Name'}),
            'position': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Position'}),
            'age': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Age'}),
        }


class EmployeeUpdateList(ModelForm):
    class Meta:
        model = EmpList
        fields = ('name', 'position', 'age', 'emp_image',)
        labels = {
            'name': '',
            'position': '',
            'age': '',
            'emp_image': 'Entered image',
        }
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Name'}),
            'position': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Position'}),
            'age': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Age'})
        }


class DeleteList(forms.Form):
    Empid = forms.IntegerField(label='Enter the employee ID to delete', min_value=1)


class UpdateList(forms.Form):
    Empid = forms.IntegerField(label='Enter the employee ID to update', min_value=1)

