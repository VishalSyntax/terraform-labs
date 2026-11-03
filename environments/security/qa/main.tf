module "security" {
  source = "../../../../modules/security"

  sg_name        = var.sg_name
  sg_description = var.sg_description
  vpc_id         = var.vpc_id
  environment    = var.environment
  allowed_cidr   = var.allowed_cidr
}
