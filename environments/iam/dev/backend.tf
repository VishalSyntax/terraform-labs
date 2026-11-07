terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "iam/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
