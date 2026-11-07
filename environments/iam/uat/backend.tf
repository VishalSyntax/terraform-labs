terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "iam/uat/terraform.tfstate"
    region = "ap-south-1"
  }
}
