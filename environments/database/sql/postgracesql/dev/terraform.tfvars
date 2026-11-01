project_name = "fctp"
environment  = "dev"

db_identifier = "postgres"
db_name       = "studentdb"
username      = "<db-username>"
password      = "<db-password>"

engine         = "postgres"
engine_version = "17.10"
instance_class = "db.t3.micro"

allocated_storage     = 20
max_allocated_storage = 100
storage_type          = "gp3"

multi_az                = false
backup_retention_period = 1

monitoring_interval              = 0
performance_insights_enabled     = false
monitoring_role_name             = false
cloudwatch_log_retention_in_days = 7
create_cloudwatch_log_group      = true

deletion_protection = false
skip_final_snapshot = true

tags = {
  Owner      = "DevOps Team"
  CostCenter = "Training"
  Terraform  = "true"
}
