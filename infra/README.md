# Fullstack Web App Template

This README covers how to deploy the frontend and backend to production. The values specified in `infra/frontend/terraform.tfvars` and `infra/backend/terraform.tfvars` should be the desired values for production. To set your local development environment variables please use `frontend/.env` and `backend/.env`.

## Frontend

1. Update `terraform.tfvars`.
2. Deploy the AWS resources with Terraform:

```bash
terraform init
terraform plan
terraform apply
```

3. Manually initate the first build for the Amplify App.
4. Visit the App at https://template.imranmatin.com.
5. Amplify is configured to deploy any new commits to the `main` branch so make a change and commit it see it deployed!

## Backend

1. Update `terraform.tfvars`.
2. Deploy the AWS resources with Terraform:

```bash
terraform init
terraform plan
terraform apply
```

3. Push an image to the newly created ECR repo.

```bash
make push-backend
```

4. Visit the backend at https://api.template.imranmatin.com.
5. To re-deploy with new changes, make a change, push the new image to the ECR repo and run `terraform apply` to see it deployed!

# Resources

[1] https://dev.to/daiquiri_team/deploying-django-application-on-aws-with-terraform-minimal-working-setup-587g \
[2] https://medium.com/@Markus.Hanslik/setting-up-an-ssl-certificate-using-aws-and-terraform-198c6fb90743 \
[3] https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx
