# Fullstack Web App Template

This repository is a template for setting up a full stack web app with React and Django.

## Environments

The following environments are available for this app.

- `local`
- ~~`dev`~~
- ~~`alpha`~~
- ~~`beta`~~
- `prod`

## Frontend

The frontend was created using the `create-react-app` CLI. See [frontend/README.md](frontend/README.md) for further details about the fronted.

## Backend

The backend was created using the `django-admin` CLI. See [backend/README.md](backend/README.md) for further details about the backend.

## Infrastructure

The infrastructure was created using `terraform` and `AWS`. See [infra/README.md](infra/README.md) for further details about the infrastructure.

At this time there is no support for any stages besides `prod` and `local`.

## CI (Build/Test) / CD (Deploy)

The frontend CI/CD is defined in `.github/workflows/deploy_frontend.yml`. Using the latest commit, 1/ GitHub Actions will kick off an Amplify Job and 2/ Amplify will then execute the build, test, and deploy phases according to the `build_spec` defined in `infra/frontend/amplify.ts`. A deployment to `prod` can also be started using the `make deploy-frontend` command (although this will use the latest commit in `origin/main` by default).

The backend CI/CD is defined in the `.github/workflows/deploy_backend.yml`. Using the latest commit, 1/ Github Actions will build, tag, and push a new image to ECR, 2/ GitHub Actions will create a new version of the ECS Task Definition with the new image, and 3/ GitHub actions will deploy the image to ECS. A deployment to `prod` can also be started using the `make deploy-backend` command and it will use the local Docker image that was built most recently.

At this time there is no support for any stages besides `prod` and `local`.

## TODO

0. Bugs
   - CI/CD deploy using committed .tfvars file and only read secrets from GitHub secrets.
   - Read backend secrets from AWS Secrets Manager rather than from environment variables.
1. CI/CD
   - Convert frontend CI/CD to use Github Actions for build, test, deploy
   - Convert frontend Amplify to manual hosting (i.e. no Git provider connecting and no build, test, deploy in Amplify)
2. Database: Local/Production integration with PostgreSQL.
3. Testing: Add testing (unit, integration, canary, etc.) for frontend/backend.
4. Add dev/alpha/beta stages
   - Secure dev/alpha/beta/prod stages
   - Create infrastructure
   - Add CI/CD stages using only Github Actions (NOTE: GitHub Actions has a Workflow Visualizer that is the equivalent of a Pipeline Visualizer).
   - Update frontend/backend app code
