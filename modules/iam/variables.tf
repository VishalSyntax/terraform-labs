variable "role_name" {
  type = string
}

variable "policy_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "trusted_service" {
  type        = string
  description = "AWS service that can assume this role e.g. ec2.amazonaws.com"
}

variable "policy_actions" {
  type        = list(string)
  description = "List of IAM actions to allow"
}
