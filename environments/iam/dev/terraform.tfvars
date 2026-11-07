role_name       = "fctp-vishal-dev-role"
policy_name     = "fctp-vishal-dev-policy"
environment     = "dev"
trusted_service = "ec2.amazonaws.com"
policy_actions  = ["s3:GetObject", "s3:PutObject", "s3:ListBucket"]
