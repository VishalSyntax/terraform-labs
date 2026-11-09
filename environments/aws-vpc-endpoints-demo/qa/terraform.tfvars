environment  = "qa"
project_name = "ssm-vpc-endpoint-demo"
aws_region   = "ap-south-1"

vpc_cidr = "10.10.0.0/16"

public_subnets = [
  "10.10.1.0/24",
  "10.10.2.0/24",
  "10.10.3.0/24"
]

private_subnets = [
  "10.10.11.0/24",
  "10.10.12.0/24",
  "10.10.13.0/24"
]

availability_zones = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c"
]

instance_type = "t3.micro"
bucket_name   = "vishal-ssm-vpc-endpoint-demo-qa-ap-south-1"
