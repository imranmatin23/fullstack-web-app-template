# Create a Route53 Record to the CloudFront DNS
resource "aws_route53_record" "prod_r53_record" {
  zone_id = var.route53_hosted_zone_id
  name    = split(" ", tolist(module.amplify_app.sub_domains)[0].dns_record)[0]
  type    = split(" ", tolist(module.amplify_app.sub_domains)[0].dns_record)[1]
  ttl     = 300
  records = [split(" ", tolist(module.amplify_app.sub_domains)[0].dns_record)[2]]
}
