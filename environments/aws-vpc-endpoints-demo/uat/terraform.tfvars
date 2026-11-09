environment  = "uat"
project_name = "ssm-vpc-endpoint-demo"
aws_region   = "ap-south-1"

vpc_cidr = "10.20.0.0/16"

public_subnets = [
  "10.20.1.0/24",
  "10.20.2.0/24",
  "10.20.3.0/24"
]

private_subnets = [
  "10.20.11.0/24",
  "10.20.12.0/24",
  "10.20.13.0/24"
]

availability_zones = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c"
]

instance_type = "t3.small"
bucket_name   = "vishal-ssm-vpc-endpoint-demo-uat-ap-south-1"
