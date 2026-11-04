module "dns" {
  source = "../../../../modules/DNS"

  domain_name   = var.domain_name
  environment   = var.environment
  record_name   = var.record_name
  record_type   = var.record_type
  ttl           = var.ttl
  record_values = var.record_values
}
