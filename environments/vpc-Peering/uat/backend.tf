terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "vpc-peering/uat/terraform.tfstate"
    region = "ap-south-1"
  }
}
