# Fullstack Web App Template

This repository is a template for setting up a full stack web app with React and Django.

## Frontend

The frontend was created using the `create-react-app` CLI. See [frontend/README.md](frontend/README.md) for further details about the fronted.

## Backend

The backend was created using the `django-admin` CLI. See [backend/README.md](backend/README.md) for further details about the backend.

## Setup

### Step 1: Clone the project

```bash
git clone https://github.com/imranmatin23/fullstack-web-app-template.git
cd fullstack-web-app-template
```

### Step 2: Create virtual environment

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### Step 3: Run the backend

```bash
python manage.py runserver # Runs the backend webserver at http://127.0.0.1:8000
```

### Step 4: Run the frontend

```bash
npm start # Runs the frontend webserver at http://127.0.0.1:3000
```

### Step 5: Begin coding

`CTRL-F` for `TODO` to find where you can configure your web app.
