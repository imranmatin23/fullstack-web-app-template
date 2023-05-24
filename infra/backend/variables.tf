variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-west-2"
}

variable "project_name" {
  description = "Project name to use in resource names"
  default     = "project-name"
}

variable "availability_zones" {
  description = "Availability zones"
  default     = ["us-west-2a", "us-west-2b"]
}

variable "ecs_prod_backend_retention_days" {
  description = "Retention period for backend logs"
  default     = 30
}