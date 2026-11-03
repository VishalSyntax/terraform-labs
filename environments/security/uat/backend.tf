terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "security/uat/terraform.tfstate"
    region = "ap-south-1"
  }
}
