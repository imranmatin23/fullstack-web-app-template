variable "region" {
  description = "The AWS region to create resources in."
}

variable "stage" {
  description = "Deployment stage (dev, alpha, beta, prod)"
}

variable "project_name" {
  description = "Project name to use in resource names"
}

variable "availability_zones" {
  description = "Availability zones"
}

variable "key_pair_name" {
  description = "The Key Pair to use with the EC2 Instance"
}

variable "ecs_backend_retention_days" {
  description = "Retention period for backend logs"
  default     = 30
}

variable "route53_hosted_zone_id" {
  description = "The Route 53 Hosted Zone"
}

variable "domain_name" {
  description = "The domain name for the service"
}

variable "secret_key" {
  description = "The secret key for the service"
}

variable "debug" {
  description = "The debug flag for the service"
}

variable "allowed_hosts" {
  description = "The allowed hosts for the service"
}

variable "cors_origin_allow_all" {
  description = "The coors origin allow all flag for the service"
}

variable "database_type" {
  description = "The database type for the backend webserver to use"
}

variable "sql_engine" {
  description = "The engine of the database"
}

variable "sql_database" {
  description = "The name of the database to connect to"
}

variable "sql_user" {
  description = "The name of the user to use to connect to the database"
}

variable "sql_password" {
  description = "The password of the user to use to connect to the database"
}

variable "sql_port" {
  description = "The port to use to connect to the database"
}
