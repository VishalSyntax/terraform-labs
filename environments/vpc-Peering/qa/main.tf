module "vpc_peering" {
  source = "../../../modules/vpc-peering"

  providers = {
    aws.primary   = aws.primary
    aws.secondary = aws.secondary
  }

  environment           = var.environment
  primary_region        = var.primary_region
  secondary_region      = var.secondary_region
  primary_vpc_cidr      = var.primary_vpc_cidr
  secondary_vpc_cidr    = var.secondary_vpc_cidr
  primary_subnet_cidr   = var.primary_subnet_cidr
  secondary_subnet_cidr = var.secondary_subnet_cidr
  instance_type         = var.instance_type
  primary_key_name      = var.primary_key_name
  secondary_key_name    = var.secondary_key_name
}
