# Backend

The backend was created using the `django-admin` CLI. To run the backend locally, set the environment variables in `.env`.

## Available Commands

### `make build-backend`

Builds the Docker image for the backend.

### `make run-backend`

Builds and runs the backend and database as containers using Docker Compose at http://127.0.0.1:80.

### `make stop-backend`

Stops the running backend and database containers.

### `make logs-backend`

Retrieves the logs for the running backend container.

### `python manage.py makemigrations`

Stores changes to models as a migration.

### `python manage.py migrate`

Creates any necessary database tables by looking at the INSTALLED_APPS and database settings.

## Reference Commands

These were the commands used in the inital setup of the backend.

```bash
# Enter virtual environment
source .venv/bin/activate
# Install dependencies
pip install --upgrade pip
pip install django
pip install gunicorn
pip install djangorestframework
pip install django-cors-headers
pip install whitenoise
pip install pylint
pip install black
# Create Django Project
django-admin startproject backend
# Enter Django Project
cd backend
# Create Django App in Django Project
django-admin startapp root
```

## Suggestions

- Add new routes for the `api` app in `api/urls.py`.
- Add new views for the `api` app in `api/views.py`.
- Add new serializers for the `api` app in `api/serializers.py`.
- Add new models for the `api` app in `api/models.py`.
- To create a new Django App in the `backend` Django Project, execute `django-admin startapp [APP_NAME]`. Make sure to add the new App's endpoints to `backend/urls.py`.
- To configure the backend's settings (e.g. database) edit `backend/settings.py` and the ENV vars in `.env`.

## References

[1] [Django Tutorial: Writing your first Django app, Part 1](https://docs.djangoproject.com/en/4.2/intro/tutorial01/#) \
[2] [Django Tutorial: Writing your first Django app, Part 2](https://docs.djangoproject.com/en/4.2/intro/tutorial02/)
