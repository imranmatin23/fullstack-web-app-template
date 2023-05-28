#!/bin/sh

# Collect static assets
echo "Collecting the static assets..."
python manage.py collectstatic --noinput

if [ "$DEBUG" = "True" ]; then
    echo "The DEBUG flag is $DEBUG, running Django development server..."
    # Run the Django server using Django
    python manage.py runserver 0.0.0.0:80
else
    echo "The DEBUG flag is $DEBUG, running Django Gunicorn server..."
    # Run the Django server using Gunicorn
    gunicorn --bind 0.0.0.0:80 --workers 1 --timeout 60 --log-level debug backend.wsgi
fi
