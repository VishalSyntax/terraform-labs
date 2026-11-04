variable "domain_name" {
  type        = string
  description = "Root domain name for the hosted zone e.g. example.com"
}

variable "environment" {
  type = string
}

variable "record_name" {
  type        = string
  description = "DNS record name e.g. www.example.com"
}

variable "record_type" {
  type        = string
  default     = "A"
  description = "DNS record type e.g. A, CNAME, MX"
}

variable "ttl" {
  type    = number
  default = 300
}

variable "record_values" {
  type        = list(string)
  description = "List of values for the DNS record e.g. IP addresses"
}
