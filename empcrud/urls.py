from django.urls import path

from . import views

urlpatterns = [
    path("view/<int:id>/", views.index, name="index"),
    path("", views.home, name="home"),
    path("create/", views.create, name="create"),
    path("view/", views.view, name="view"),
    path("delete/<int:id>", views.delete, name='delete'),
    path("delete/", views.delete_view, name='delete_view'),
    path("update/<int:id>", views.update, name='update'),
    path("update/", views.update_view, name='update_view'),
    path("search_emp/", views.search_emp, name='search_emp'),
    path("emp_txt/", views.emp_txt, name='emp_txt'),
    path("emp_csv/", views.emp_csv, name='emp_csv'),
    path("emp_pdf/", views.emp_pdf, name='emp_pdf'),
]
