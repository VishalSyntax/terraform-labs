variable "aws_instance_type" {
	default = "t3.micro"
	type = string
}

variable "root_storage_size" {
	default = 16
	type = number
}

variable "ec2_amiid" {
	default = "ami-066c4849e6b3a1e3d"
	type = string
}