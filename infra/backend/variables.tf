variable "region" {
  description = "The AWS region to create resources in."
}

variable "project_name" {
  description = "Project name to use in resource names"
}

variable "availability_zones" {
  description = "Availability zones"
}

variable "ecs_prod_backend_retention_days" {
  description = "Retention period for backend logs"
  default     = 30
}

variable "route53_hosted_zone_id" {
  description = "The Route 53 Hosted Zone"
}

variable "domain_name" {
  description = "The domain name for the service"
}