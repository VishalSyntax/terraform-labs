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
  type = string
}

variable "policy_actions" {
  type = list(string)
}
