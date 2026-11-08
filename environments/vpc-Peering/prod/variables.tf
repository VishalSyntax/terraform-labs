variable "environment" {
  description = "Environment name"
  type        = string
}

variable "primary_region" {
  description = "Primary AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "secondary_region" {
  description = "Secondary AWS region"
  type        = string
  default     = "us-east-1"
}

variable "primary_vpc_cidr" {
  description = "CIDR block for the primary VPC"
  type        = string
}

variable "secondary_vpc_cidr" {
  description = "CIDR block for the secondary VPC"
  type        = string
}

variable "primary_subnet_cidr" {
  description = "CIDR block for the primary subnet"
  type        = string
}

variable "secondary_subnet_cidr" {
  description = "CIDR block for the secondary subnet"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "primary_key_name" {
  description = "Primary EC2 key name"
  type        = string
  default     = ""
}

variable "secondary_key_name" {
  description = "Secondary EC2 key name"
  type        = string
  default     = ""
}
