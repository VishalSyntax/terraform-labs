output "ec2_security_group_id" {
  description = "ID of the private EC2 security group"
  value       = aws_security_group.ec2.id
}
