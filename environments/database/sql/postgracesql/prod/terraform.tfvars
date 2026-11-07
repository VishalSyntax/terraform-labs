project_name = "fctp"
environment  = "prod"

db_identifier = "postgres"
db_name       = "studentdb"
username      = "<db-username>"
password      = "<db-password>"

engine         = "postgres"
engine_version = "17.10"
instance_class = "db.t3.medium"

allocated_storage     = 100
max_allocated_storage = 500
storage_type          = "gp3"

multi_az                = true
backup_retention_period = 7

monitoring_interval              = 60
performance_insights_enabled     = true
monitoring_role_name             = false
cloudwatch_log_retention_in_days = 30
create_cloudwatch_log_group      = true

deletion_protection = true
skip_final_snapshot = false

tags = {
  Owner      = "DevOps Team"
  CostCenter = "Training"
  Terraform  = "true"
}
