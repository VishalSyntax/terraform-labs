role_name       = "fctp-vishal-prod-role"
policy_name     = "fctp-vishal-prod-policy"
environment     = "prod"
trusted_service = "ec2.amazonaws.com"
policy_actions  = ["s3:GetObject", "s3:PutObject", "s3:ListBucket"]
