# Fullstack Web App Template

This repository is a template for setting up a full stack web app with React and Django.

## Frontend

The frontend was created using the `create-react-app` CLI.

## Backend

The backend was created using the `django-admin` CLI.

# Setup

## Prerequisites

### Step 1: Clone the project

```bash
git clone https://github.com/imranmatin23/collaborative-music-playing-system.git
cd collaborative-music-playing-system
```

### Step 2: Create virtual environment

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## Commands

```bash
mkdir fullstack-web-app-template
touch README.md
touch LICENSE
touch .gitignore

# Frontend
npx create-react-app frontend

# Backend
python3 -m venv .venv
source .venv/bin/activate
pip install django djangorestframework django-cors-headers
django-admin startproject backend
django-admin startapp api
```
