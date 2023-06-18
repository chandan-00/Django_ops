from django.shortcuts import render, HttpResponseRedirect, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.forms import UserCreationForm
from .forms import RegisterUserForm

# Create your views here.


def login_user(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('home')
        else:
            messages.success(request, 'There was an error in the login, try again')
            return redirect('login_user')
    return render(request, 'authentication/login.html', {})


def logout_user(request):
    logout(request)
    messages.success(request, 'You were logged out!')
    return redirect('home')


def logout_confirm(request):
    return render(request, 'authentication/logout.html', {})


def register_user(request):
    if request.method == "POST":
        form = RegisterUserForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data['username']
            password = form.cleaned_data['password1']
            user = authenticate(request, username=username, password=password)
            login(request, user)
            messages.success(request, 'Registration successful')
            return redirect('view')
    else:
        form = RegisterUserForm()
    return render(request, 'authentication/register_user.html', {'form': form})
