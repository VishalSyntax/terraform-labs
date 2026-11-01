project_name = "fctp"
environment  = "uat"

db_identifier = "postgres"
db_name       = "studentdb"
username      = "<db-username>"
password      = "<db-password>"

engine         = "postgres"
engine_version = "17.10"
instance_class = "db.t3.small"

allocated_storage     = 50
max_allocated_storage = 200
storage_type          = "gp3"

multi_az                = false
backup_retention_period = 5

monitoring_interval              = 0
performance_insights_enabled     = false
monitoring_role_name             = false
cloudwatch_log_retention_in_days = 14
create_cloudwatch_log_group      = true

deletion_protection = false
skip_final_snapshot = true

tags = {
  Owner      = "DevOps Team"
  CostCenter = "Training"
  Terraform  = "true"
}
