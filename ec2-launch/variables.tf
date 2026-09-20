variable "aws_instance_type" {
	default = "t3.micro"
	type = string
}

variable "root_storage_size" {
	default = 16
	type = number
}

variable "ec2_amiid" {
	default = "ami-0b6d9d3d33ba97d99"
	type = string
}