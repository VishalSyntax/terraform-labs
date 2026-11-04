resource "aws_route53_zone" "this" {
  name = var.domain_name

  tags = {
    Name        = var.domain_name
    Environment = var.environment
  }
}

resource "aws_route53_record" "this" {
  zone_id = aws_route53_zone.this.zone_id
  name    = var.record_name
  type    = var.record_type
  ttl     = var.ttl
  records = var.record_values
}
