variable "region" {
  description = "The AWS region to create resources in."
}

variable "project_name" {
  description = "Project name to use in resource names"
}

variable "github_personal_access_token" {
  description = "Github Personal Access Token"
}

variable "github_repository" {
  description = "Github Repository"
}

variable "domain_name" {
  description = "Domain name to use"
}

variable "sub_domain_prefix" {
  description = "Subdomain to use"
}