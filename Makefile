# Define system python interpreter. used only to create virtual environment
PY = python3
VENV = .venv
BIN=$(VENV)/bin

.PHONY: help

help: ## Describes each Makefile target
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

$(VENV): backend/requirements.txt ## Create .venv Python3 virtual environment
	$(PY) -m venv $(VENV)
	$(BIN)/pip install --upgrade -r backend/requirements.txt
	$(BIN)/pip install --upgrade pip
	touch $(VENV)

run-frontend-dev: ## Run frontend web server in developement mode
	cd frontend; \
	npm start; \
	cd ../

run-backend-dev: $(VENV) ## Run backend web server in developement mode
	cd backend; \
	../$(BIN)/python manage.py makemigrations; \
	../$(BIN)/python manage.py migrate; \
	../$(BIN)/python manage.py runserver; \
	cd ../

build-frontend: ## Builds the frontend and moves output to the backend folder
	cd frontend; \
	npm run relocate; \
	cd ../

run-monolith-dev: build-frontend run-backend-dev ## Runs the backend webserver with built frontend code colocated

build-backend-docker: build-frontend ## Builds a Docker image of backend webserver with built frontend code colocated
	cd backend; \
	docker build -t fullstack-web-app-template .; \
	cd ../

run-backend-docker: build-backend-docker ## Runs a Docker image of backend webserver with built frontend code colocated
	cd backend; \
	docker run -d --name fullstack-web-app-template -p 8000:8000 fullstack-web-app-template; \
	cd ../

stop-backend-docker: ## Stops a Docker image of backend webserver with built frontend code colocated
	docker stop fullstack-web-app-template
	docker rm fullstack-web-app-template

logs-backend-docker: ## Prints the last 100 lines of the running Docker container
	docker logs fullstack-web-app-template -n 100
