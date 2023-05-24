#!/bin/bash

# Run the Django server using Gunicorn
gunicorn --bind 0.0.0.0:80 --workers 1 --timeout 60 --log-level debug backend.wsgi

# Run the Django server using Django
# python manage.py runserver 0.0.0.0:80
