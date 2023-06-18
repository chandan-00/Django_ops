import csv
from django.shortcuts import render, redirect, HttpResponse
from .models import EmpList
from .forms import EmployeeList, EmployeeUpdateList, DeleteList, UpdateList
from django.http import FileResponse
import io
from reportlab.pdfgen import canvas
from reportlab.lib.units import inch
from reportlab.lib.pagesizes import A4
from django.core.paginator import Paginator
from django.contrib import messages


def index(response, id):
    ls = EmpList.objects.get(empid=id)
    if ls:
        return render(response, 'empcrud/list.html', {'ls': ls})
    messages.success(response, f"No employee with ID = '{id}'")
    return render(response, 'empcrud/home.html', {})

def view(response):
    ls = EmpList.objects.all().order_by('empid')
    p = Paginator(ls, 4)
    page = response.GET.get('page')
    search_page = p.get_page(page)
    nums = 'a'*search_page.paginator.num_pages
    if response.method == 'GET':
        return render(response, "empcrud/view.html", {"ls": ls, 'search_page': search_page, 'nums': nums})


def home(response):
    return render(response, "empcrud/home.html", {})


def create(response):
    form = EmployeeList(response.POST or None, response.FILES or None)
    if form.is_valid():
        form.save()
        messages.success(response, 'Created successfully!!')
        return redirect('view')
    else:
        form = EmployeeList()
    return render(response, "empcrud/create.html", {"form": form})


def update(response, id):
    emp = EmpList.objects.get(empid=id)
    form = EmployeeUpdateList(response.POST or None, response.FILES or None, instance=emp)
    if emp:
        if form.is_valid():
            form.save()
            messages.success(response, 'Updated successfully!!')
            return redirect("index", emp.empid)
        return render(response, "empcrud/update.html", {"form": form, 'emp': emp, })
    messages.success(response, f"No employee with ID = '{id}'")
    return render(response, 'empcrud/home.html', {})


def delete(response, id):
    emp = EmpList.objects.get(empid=id)
    if emp:
        if response.method == 'POST':
            emp.delete()
            messages.success(response, 'Deleted successfully!!')
            return redirect("/")
        return render(response, "empcrud/delete.html", {'emp': emp})
    messages.success(response, f"No employee with ID = '{id}'")
    return render(response, 'empcrud/home.html', {})


def delete_view(response):
    if response.method == 'POST':
        form = DeleteList(response.POST)
        if form.is_valid():
            e = form.cleaned_data['Empid']
            return redirect("/delete/%i" % int(e))
    else:
        form = DeleteList()
    return render(response, "empcrud/delete_view.html", {'form': form})


def update_view(response):
    if response.method == 'POST':
        form = UpdateList(response.POST)
        if form.is_valid():
            e = form.cleaned_data['Empid']
            return redirect("/update/%i" % e)
    else:
        form = UpdateList()
    return render(response, "empcrud/update_view.html", {'form': form})


def search_emp(response):
    searched = response.POST['searched']
    emp = EmpList.objects.filter(name__contains=searched).order_by('empid')
    if emp:
        return render(response, "empcrud/search_emp.html", {'searched': searched, 'emp': emp, })
    messages.success(response, f"No employee with '{searched}' in their name")
    return render(response, 'empcrud/home.html', {})


def emp_txt(request):
    response = HttpResponse(content_type='text/plain')
    response['Content-Disposition'] = 'attachment; filename=employees.txt'
    data = EmpList.objects.all().order_by('empid')
    lines = []
    for e in data:
        lines.append(f'Employee ID:{e.empid}\nName:{e.name}\nPosition:{e.position}\nAge:{e.age}\n\n')
    response.writelines(lines)
    return response


def emp_csv(request):
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename=employees.csv'
    writer = csv.writer(response)
    writer.writerow(['Employee ID', 'Name', 'Position', 'Age'])
    data = EmpList.objects.all().order_by('empid')
    for e in data:
        writer.writerow([e.empid, e.name, e.position, e.age])
    return response


def emp_pdf(request):
    buf = io.BytesIO()
    c = canvas.Canvas(buf, pagesize=A4, bottomup=0)
    textob = c.beginText()
    textob.setTextOrigin(inch, inch)
    textob.setFont("Helvetica", 10)
    data = EmpList.objects.all().order_by('empid')
    lines = []
    for e in data:
        lines.append(f'Employee ID:{e.empid}')
        lines.append(f'Name:{e.name}')
        lines.append(f'Position:{e.position}')
        lines.append(f'Age:{e.age}')
        lines.append(f' ')
    for line in lines:
        textob.textLine(line)
    c.drawText(textob)
    c.showPage()
    c.save()
    buf.seek(0)
    return FileResponse(buf, as_attachment=True, filename='employees.pdf')
