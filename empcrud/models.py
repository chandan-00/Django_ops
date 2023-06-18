from django.db import models


# Create your models here.


class EmpList(models.Model):
    objects = None
    name = models.CharField(max_length=300)
    empid = models.PositiveIntegerField()
    position = models.CharField(max_length=300, default='')
    age = models.PositiveIntegerField()
    emp_image = models.ImageField(null=True, blank=True, upload_to="images/")

    def __str__(self):
        return f'{self.empid}, {self.name}, {self.position}, {self.age}'


