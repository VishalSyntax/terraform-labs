output "start_lambda_arn" {
  value = aws_lambda_function.start.arn
}

output "stop_lambda_arn" {
  value = aws_lambda_function.stop.arn
}

output "start_rule_arn" {
  value = aws_cloudwatch_event_rule.start.arn
}

output "stop_rule_arn" {
  value = aws_cloudwatch_event_rule.stop.arn
}
