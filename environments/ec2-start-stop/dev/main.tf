module "ec2_start_stop" {
  source = "../../../../modules/ec2-start-stop"

  name_prefix    = var.name_prefix
  environment    = var.environment
  instance_ids   = var.instance_ids
  start_schedule = var.start_schedule
  stop_schedule  = var.stop_schedule
}
