output "db_instance_id"         { value = aws_db_instance.this.id }
output "db_instance_identifier" { value = aws_db_instance.this.identifier }
output "db_instance_arn"        { value = aws_db_instance.this.arn }
output "db_endpoint"            { value = aws_db_instance.this.endpoint }
output "db_address"             { value = aws_db_instance.this.address }
output "db_port"                { value = aws_db_instance.this.port }
output "db_name"                { value = aws_db_instance.this.db_name }
output "engine"                 { value = aws_db_instance.this.engine }
output "engine_version"         { value = aws_db_instance.this.engine_version }
output "instance_class"         { value = aws_db_instance.this.instance_class }
output "security_group_id"      { value = aws_security_group.this.id }
output "db_subnet_group_name"   { value = aws_db_subnet_group.this.name }
output "parameter_group_name"   { value = aws_db_parameter_group.this.name }
output "availability_zone"      { value = aws_db_instance.this.availability_zone }
output "multi_az"               { value = aws_db_instance.this.multi_az }
output "allocated_storage"      { value = aws_db_instance.this.allocated_storage }
output "max_allocated_storage"  { value = aws_db_instance.this.max_allocated_storage }
output "storage_type"           { value = aws_db_instance.this.storage_type }
output "storage_encrypted"      { value = aws_db_instance.this.storage_encrypted }
output "backup_retention_period" { value = aws_db_instance.this.backup_retention_period }

output "cloudwatch_log_group_name" {
  value = var.create_cloudwatch_log_group ? aws_cloudwatch_log_group.postgresql[0].name : null
}

output "monitoring_role_arn" {
  value = var.monitoring_interval > 0 ? aws_iam_role.monitoring[0].arn : null
}
