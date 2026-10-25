resource "aws_db_parameter_group" "this" {
  name        = "${local.name_prefix}-postgres-params"
  family      = "postgres17"
  description = "Parameter Group for ${local.db_identifier}"

  parameter { name = "log_connections";           value = "1" }
  parameter { name = "log_disconnections";        value = "1" }
  parameter { name = "log_duration";              value = "1" }
  parameter { name = "log_statement";             value = "ddl" }
  parameter { name = "log_min_duration_statement"; value = "1000" }
  parameter { name = "autovacuum";                value = "1" }
  parameter { name = "log_lock_waits";            value = "1" }
  parameter { name = "timezone";                  value = "UTC" }

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-postgres-params"
  })
}
