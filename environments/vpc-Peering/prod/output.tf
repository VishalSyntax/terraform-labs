output "primary_vpc_id" {
  description = "ID of the Primary VPC"
  value       = module.vpc_peering.primary_vpc_id
}

output "secondary_vpc_id" {
  description = "ID of the Secondary VPC"
  value       = module.vpc_peering.secondary_vpc_id
}

output "vpc_peering_connection_id" {
  description = "ID of the VPC Peering Connection"
  value       = module.vpc_peering.vpc_peering_connection_id
}

output "vpc_peering_status" {
  description = "Status of the VPC Peering Connection"
  value       = module.vpc_peering.vpc_peering_status
}

output "primary_instance_private_ip" {
  description = "Private IP of the Primary EC2 Instance"
  value       = module.vpc_peering.primary_instance_private_ip
}

output "secondary_instance_private_ip" {
  description = "Private IP of the Secondary EC2 Instance"
  value       = module.vpc_peering.secondary_instance_private_ip
}

output "primary_instance_public_ip" {
  description = "Public IP of the Primary EC2 Instance"
  value       = module.vpc_peering.primary_instance_public_ip
}

output "secondary_instance_public_ip" {
  description = "Public IP of the Secondary EC2 Instance"
  value       = module.vpc_peering.secondary_instance_public_ip
}
