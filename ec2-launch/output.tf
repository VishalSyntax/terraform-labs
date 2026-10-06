# output "ec2_public_ip" {
	# value = aws_instance.my-insta[*].public_ip
	
# }

# output "ec2_private_ip" {
	# value = aws_instance.my-insta[*].private_ip
	
# }


# output "ec2_public_dns" {
	# value = aws_instance.my-insta[*].public_dns
	
# }


output "ec2_name" {
  value = [
    for key in aws_instance.my-insta : key.tags["Name"]
  ]
}

output "ec2_name_public_ip" {
  value = {
    for server in aws_instance.my-insta : server.tags["Name"] =>server.public_ip
  }
}

output "ec2_public_ip" {
  value = [
    for key in aws_instance.my-insta : key.public_ip
  ]
}

output "ec2_private_ip" {
  value = [
    for instance in aws_instance.my-insta : instance.private_ip
  ]
}

output "ec2_public_dns" {
  value = [
    for vishal, instance in aws_instance.my-insta : instance.public_dns
  ]
}