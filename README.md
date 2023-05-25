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
pip install -r backend/requirements.txt
```

### Step 3: Run the backend

Runs the backend webserver at http://127.0.0.1:8000. Visit http://127.0.0.1:8000/api/room to see a Django created API page.

```bash
cd backend
python manage.py migrate
python manage.py makemigrations
python manage.py runserver
```

### Step 4: Run the frontend

Runs the frontend webserver at http://127.0.0.1:3000. Open the Javascript console in your browser to see the number of rooms in the database (the data was retrieved using GET HTTP request to backend from the frontend Home Page).

```bash
cd frontend
npm install
npm start
```

Alternatively you can run both the frontend and the backend from the same server by executing the commands below. Those commands will build the frontend and move the resulting static build files to the backend. Therefore, only the backend server needs to be running.

```bash
cd frontend
npm run relocate
```

### Step 5: Begin coding

`CTRL-F` for `TODO` to find where you can configure your web app.

# Resources

[1] https://dev.to/daiquiri_team/deploying-django-application-on-aws-with-terraform-minimal-working-setup-587g
[2] https://medium.com/@Markus.Hanslik/setting-up-an-ssl-certificate-using-aws-and-terraform-198c6fb90743
