environment  = "prod"
project_name = "ssm-vpc-endpoint-demo"
aws_region   = "ap-south-1"

vpc_cidr = "10.30.0.0/16"

public_subnets = [
  "10.30.1.0/24",
  "10.30.2.0/24",
  "10.30.3.0/24"
]

private_subnets = [
  "10.30.11.0/24",
  "10.30.12.0/24",
  "10.30.13.0/24"
]

availability_zones = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c"
]

instance_type = "t3.small"
bucket_name   = "vishal-ssm-vpc-endpoint-demo-prod-ap-south-1"
