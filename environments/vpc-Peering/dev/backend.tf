terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "vpc-peering/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
