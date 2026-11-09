environment  = "dev"
project_name = "ssm-vpc-endpoint-demo"
aws_region   = "ap-south-1"

vpc_cidr = "10.0.0.0/16"

public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

private_subnets = [
  "10.0.11.0/24",
  "10.0.12.0/24",
  "10.0.13.0/24"
]

availability_zones = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c"
]

instance_type = "t3.micro"
bucket_name   = "vishal-ssm-vpc-endpoint-demo-dev-ap-south-1"
