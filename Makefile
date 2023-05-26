# Define system python interpreter. used only to create virtual environment
PY = python3
VENV = .venv
BIN=$(VENV)/bin

# General AWS Variables
REGION=us-west-2

# Amplify Variables
AMPLIFY_APP_ID=d122ihsxyi4grc
BRANCH_NAME=main

# ECR Variables
ECR_REGISTRY=775627766428.dkr.ecr.us-west-2.amazonaws.com
ECR_REPOSITORY=fullstack-web-app-template-backend

# ECS Variables
TASK_DEFINITION_NAME=backend-web
CLUSTER_NAME=prod
SERVICE_NAME=prod-backend-web

.PHONY: help

help: ## Describes each Makefile target
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

### Frontend

run-frontend: ## Run frontend web server in developement mode
	cd frontend; \
	npm run start; \
	cd ../

deploy-frontend: ## [Requires latest changes to be committed to REMOTE] Manually kick off Amplify Job to build, test, and deploy frontend
	./scripts/deploy_frontend.sh "$(REGION)" "$(AMPLIFY_APP_ID)" "$(BRANCH_NAME)"

deploy-infra-frontend: ## Deploy backend infrastructure
	cd infra/frontend; \
	terraform plan; \
	terraform apply -auto-approve -input=false; \
	cd ../..

### Backend

$(VENV): backend/requirements.txt ## Create .venv Python3 virtual environment
	$(PY) -m venv $(VENV)
	$(BIN)/pip install --upgrade -r backend/requirements.txt
	$(BIN)/pip install --upgrade pip
	touch $(VENV)

run-backend: build-backend ## Runs a Docker image of backend webserver
	cd backend; \
	docker run --env-file .env -d --name $(ECR_REPOSITORY) -p 80:80 $(ECR_REPOSITORY); \
	cd ../

stop-backend: ## Stops a Docker image of backend webserver
	docker stop $(ECR_REPOSITORY)
	docker rm $(ECR_REPOSITORY)

logs-backend: ## Prints the last 100 lines of the running Docker container
	docker logs $(ECR_REPOSITORY) -n 100

build-backend: ## Builds a Docker image of backend webserver
	cd backend; \
	docker build -t $(ECR_REPOSITORY) .; \
	cd ../

deploy-backend: build-backend ## Manually push LOCALLY built docker image to ECR, update task definition and deploy backend webserver to ECS
	./scripts/deploy_backend.sh "$(REGION)" "$(ECR_REGISTRY)" "$(ECR_REPOSITORY)" "$(TASK_DEFINITION_NAME)" "$(CLUSTER_NAME)" "$(SERVICE_NAME)"

deploy-infra-backend: ## Deploy backend infrastructure
	cd infra/backend; \
	terraform plan; \
	terraform apply -auto-approve -input=false; \
	cd ../..
