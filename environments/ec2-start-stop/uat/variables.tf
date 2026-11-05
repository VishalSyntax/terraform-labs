variable "name_prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "instance_ids" {
  type = list(string)
}

variable "start_schedule" {
  type = string
}

variable "stop_schedule" {
  type = string
}
