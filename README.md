# Fullstack Web App Template

This repository is a template for setting up a full stack web app with React and Django.

## Frontend

The frontend was created using the `create-react-app` CLI. See [frontend/README.md](frontend/README.md) for further details about the fronted.

## Backend

The backend was created using the `django-admin` CLI. See [backend/README.md](backend/README.md) for further details about the backend.

## Infrastructure

The infrastructure was created using `terraform` and `AWS`. See [infra/README.md](infra/README.md) for further details about the infrastructure.

## TODO

1. Local/Production integration with PostgreSQL.
2. Add CI/CD for frontend/backend.
   - CI/CD for frontend is PENDING using Github Actions (deploy whenever push to main and changes in `backend/`).
   - CI/CD for backend is COMPLETE using Github Actions (deploy whenever push to main and changes in `frontend/`).
3. Add testing (unit, integration, canary, etc.) for frontend/backend.
