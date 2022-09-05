resource "aws_route53_record" "dns-root" {
  zone_id = var.aws_zone_id
  name    = var.aws_domain
  type    = "A"
  ttl     = "300"
  records = var.record_ip_publico
}
resource "aws_route53_record" "dns-www" {
  zone_id = var.aws_zone_id
  name    = "www.${var.aws_domain}"
  type    = "A"
  ttl     = "300"
  records = var.record_ip_publico
}

resource "aws_route53_record" "dns-gestor" {
  zone_id = var.aws_zone_id
  name    = "gestor.${var.aws_domain}"
  type    = "A"
  ttl     = "300"
  records = var.record_ip_publico
}

