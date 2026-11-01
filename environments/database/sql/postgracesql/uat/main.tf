module "rds" {
  source = "../../../../../modules/database/rds"

  project_name = var.project_name
  environment  = var.environment
  aws_region   = var.aws_region

  vpc_id             = data.terraform_remote_state.network.outputs.vpc_id
  private_subnet_ids = data.terraform_remote_state.network.outputs.public_subnet_ids

  allowed_security_group_ids = [module.rds.security_group_id]

  kms_key_arn = data.terraform_remote_state.kms.outputs.kms_key_arn

  db_identifier = var.db_identifier
  db_name       = var.db_name
  username      = var.username
  password      = var.password

  engine         = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class

  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  storage_type          = var.storage_type

  multi_az = var.multi_az

  backup_retention_period = var.backup_retention_period

  monitoring_interval              = var.monitoring_interval
  performance_insights_enabled     = var.performance_insights_enabled
  cloudwatch_log_retention_in_days = var.cloudwatch_log_retention_in_days
  create_cloudwatch_log_group      = var.create_cloudwatch_log_group
  monitoring_role_name             = var.monitoring_role_name

  deletion_protection = var.deletion_protection
  skip_final_snapshot = var.skip_final_snapshot

  tags = var.tags
}
