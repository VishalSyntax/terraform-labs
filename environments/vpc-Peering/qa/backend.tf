terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "vpc-peering/qa/terraform.tfstate"
    region = "ap-south-1"
  }
}
