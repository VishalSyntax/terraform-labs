output "ec2_public_ip" {
	value = aws_instance.my-insta.public_ip
	
}

output "ec2_private_ip" {
	value = aws_instance.my-insta.private_ip
	
}


output "ec2_public_dns" {
	value = aws_instance.my-insta.public_dns
	
}
