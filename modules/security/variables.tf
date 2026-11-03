variable "sg_name" {
  type = string
}

variable "sg_description" {
  type    = string
  default = "Managed by Terraform"
}

variable "vpc_id" {
  type = string
}

variable "environment" {
  type = string
}

variable "allowed_cidr" {
  type    = string
  default = "0.0.0.0/0"
}
