role_name       = "fctp-vishal-qa-role"
policy_name     = "fctp-vishal-qa-policy"
environment     = "qa"
trusted_service = "ec2.amazonaws.com"
policy_actions  = ["s3:GetObject", "s3:PutObject", "s3:ListBucket"]
