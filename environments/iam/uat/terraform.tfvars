role_name       = "fctp-vishal-uat-role"
policy_name     = "fctp-vishal-uat-policy"
environment     = "uat"
trusted_service = "ec2.amazonaws.com"
policy_actions  = ["s3:GetObject", "s3:PutObject", "s3:ListBucket"]
