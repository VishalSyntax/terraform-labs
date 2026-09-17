variable "bucket_name" {
  type = string
}

variable "Environment" {
 type = string
}

variable "bucket_tag" {
  type = string
}

variable "Enable_DNS_hostnames" {
  type = bool
  default = true
}

variable "enable_dns_support" {
  type = bool
  default = true
  
}