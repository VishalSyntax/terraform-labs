terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "iam/qa/terraform.tfstate"
    region = "ap-south-1"
  }
}
