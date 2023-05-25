# Define system python interpreter. used only to create virtual environment
PY = python3
VENV = .venv
BIN=$(VENV)/bin

.PHONY: help

help: ## Describes each Makefile target
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

### Frontend

run-frontend: ## Run frontend web server in developement mode
	cd frontend; \
	npm run start; \
	cd ../

### Backend

$(VENV): backend/requirements.txt ## Create .venv Python3 virtual environment
	$(PY) -m venv $(VENV)
	$(BIN)/pip install --upgrade -r backend/requirements.txt
	$(BIN)/pip install --upgrade pip
	touch $(VENV)

build-backend: ## Builds a Docker image of backend webserver
	cd backend; \
	docker build -t fullstack-web-app-template .; \
	cd ../

run-backend: build-backend ## Runs a Docker image of backend webserver
	cd backend; \
	docker run -d --name fullstack-web-app-template -p 80:80 fullstack-web-app-template; \
	cd ../

stop-backend: ## Stops a Docker image of backend webserver
	docker stop fullstack-web-app-template
	docker rm fullstack-web-app-template

logs-backend: ## Prints the last 100 lines of the running Docker container
	docker logs fullstack-web-app-template -n 100