variable "domain_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "record_name" {
  type = string
}

variable "record_type" {
  type = string
}

variable "ttl" {
  type = number
}

variable "record_values" {
  type = list(string)
}
