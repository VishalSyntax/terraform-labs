#################################################
# VPC MODULE (VPC, SUBNETS, ROUTING, ENDPOINTS)
#################################################

module "vpc" {
  source = "../../../modules/aws-vpc-s3-endpoints/vpc"

  environment        = var.environment
  aws_region         = var.aws_region
  vpc_cidr           = var.vpc_cidr
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones
}

#################################################
# SECURITY GROUP MODULE
#################################################

module "security_group" {
  source = "../../../modules/aws-vpc-s3-endpoints/security-group"

  environment  = var.environment
  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  vpc_cidr     = var.vpc_cidr
}

#################################################
# S3 MODULE
#################################################

module "s3" {
  source = "../../../modules/aws-vpc-s3-endpoints/s3"

  environment = var.environment
  bucket_name = var.bucket_name
}

#################################################
# IAM MODULE
#################################################

module "iam" {
  source = "../../../modules/aws-vpc-s3-endpoints/iam"

  environment = var.environment
  bucket_arn  = module.s3.bucket_arn
}

#################################################
# EC2 MODULE
#################################################

module "ec2" {
  source = "../../../modules/aws-vpc-s3-endpoints/ec2"

  environment           = var.environment
  project_name          = var.project_name
  instance_type         = var.instance_type
  private_subnet_id     = module.vpc.private_subnet_ids[0]
  ec2_security_group_id = module.security_group.ec2_security_group_id
  instance_profile_name = module.iam.instance_profile_name

  depends_on = [
    module.iam
  ]
}
