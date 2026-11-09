output "instance_id" {
  description = "ID of the private EC2 instance"
  value       = aws_instance.private_ec2.id
}

output "private_ip" {
  description = "Private IP of the private EC2 instance"
  value       = aws_instance.private_ec2.private_ip
}

output "instance_arn" {
  description = "ARN of the private EC2 instance"
  value       = aws_instance.private_ec2.arn
}
