terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "aws-vpc-endpoints-demo/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
