# Fullstack Web App Template

This README covers how to deploy the frontend and backend to production.

## Frontend

You can either rely on `.github/workflows/deploy_frontend_infra.yml` (CI/CD with GitHub Actions) to deploy the Frontend infrastructure (NOTE: Terraform variable inputs are defined as GitHub variables and secrets for the repository) or you can deploy the infrastructure from your local machine using `make deploy-infra-frontend` (NOTE: Terraform variable inputs are defined in `infra/frontend/terraform.tfvars`).

## Backend

You can either rely on `.github/workflows/deploy_backend_infra.yml` (CI/CD with GitHub Actions) to deploy the Backend infrastructure (NOTE: Terraform variable inputs are defined as GitHub variables and secrets for the repository) or you can deploy the infrastructure from your local machine using `make deploy-infra-backend` (NOTE: Terraform variable inputs are defined in `infra/backend/terraform.tfvars`).

# Resources

[1] https://dev.to/daiquiri_team/deploying-django-application-on-aws-with-terraform-minimal-working-setup-587g \
[2] https://medium.com/@Markus.Hanslik/setting-up-an-ssl-certificate-using-aws-and-terraform-198c6fb90743 \
[3] https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx
