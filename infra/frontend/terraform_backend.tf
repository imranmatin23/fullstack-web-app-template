terraform {
  backend "s3" {
    bucket = "imatin-personal-tfstate"
    key    = "fullstack-web-app-template-frontend/terraform.tfstate"
    region = "us-west-2"
  }
}