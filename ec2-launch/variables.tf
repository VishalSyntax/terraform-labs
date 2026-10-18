variable "aws_instance_type" {
	default = "t3.micro"
	type = string
}

variable "root_storage_size" {
	default = 16
	type = number
}

variable "ec2_amiid" {
	default = "ami-0488f904a4404c3d5"
	type = string
}

variable "env" {
	default = "dev"
	type = string
}

variable "ec2_default_root_storage_size" {
	default = 10
	type = number
}