module "dynmodb_module" {
  source = "../../../../../modules/database/dynamodb"

  aws_region          = var.aws_region
  name                = var.name
  billing_mode        = var.billing_mode
  read_capacity       = var.read_capacity
  write_capacity      = var.write_capacity
  hash_key            = var.hash_key
  range_key           = var.range_key
  attribute_name      = var.attribute_name
  attribute_type      = var.attribute_type
  dynamodb_table_name = var.dynamodb_table_name
  environment         = var.environment
  range_attribute_name = var.range_attribute_name
  range_attribute_type = var.range_attribute_type
}
