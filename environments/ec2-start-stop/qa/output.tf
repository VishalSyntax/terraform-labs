output "start_lambda_arn" {
  value = module.ec2_start_stop.start_lambda_arn
}

output "stop_lambda_arn" {
  value = module.ec2_start_stop.stop_lambda_arn
}
