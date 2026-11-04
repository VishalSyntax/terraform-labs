terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "DNS/uat/terraform.tfstate"
    region = "ap-south-1"
  }
}
