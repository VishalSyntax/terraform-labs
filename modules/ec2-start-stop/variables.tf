variable "name_prefix" {
  type        = string
  description = "Prefix for all resource names"
}

variable "environment" {
  type = string
}

variable "instance_ids" {
  type        = list(string)
  description = "List of EC2 instance IDs to start/stop"
}

variable "start_schedule" {
  type        = string
  description = "Cron expression for start e.g. cron(0 9 * * ? *) = 9am UTC daily"
  default     = "cron(0 9 * * ? *)"
}

variable "stop_schedule" {
  type        = string
  description = "Cron expression for stop e.g. cron(0 18 * * ? *) = 6pm UTC daily"
  default     = "cron(0 18 * * ? *)"
}
