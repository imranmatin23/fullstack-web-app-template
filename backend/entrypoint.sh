#!/bin/sh

# Collect static assets
echo "Collecting the static assets..."
python manage.py collectstatic --noinput

if [ "$LOCAL" = "True" ]; then
    echo "The LOCAL flag is $LOCAL, running Django development server..."
    # Run the Django server using Django
    python manage.py runserver 0.0.0.0:80
else
    echo "The LOCAL flag is $LOCAL, running Django Gunicorn server..."
    # Run the Django server using Gunicorn
    gunicorn --bind 0.0.0.0:80 --workers 1 --timeout 60 --log-level debug backend.wsgi
fi
