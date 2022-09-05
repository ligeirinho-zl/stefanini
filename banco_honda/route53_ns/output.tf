
output "dns_zone" {
  value = aws_route53_zone.dns-domain.zone_id
}

output "dns_nserver" {
  value = aws_route53_zone.dns-domain.name_servers
  }