name_prefix    = "fctp-vishal-prod"
environment    = "prod"
instance_ids   = ["i-xxxxxxxxxxxxxxxxx"]
start_schedule = "cron(0 9 * * ? *)"
stop_schedule  = "cron(0 18 * * ? *)"
