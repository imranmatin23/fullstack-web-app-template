output "prod_lb_domain" {
  value = aws_lb.prod.dns_name
}

# output "prod_db_domain" {
#   value = aws_rds_cluster.prod.endpoint
# }