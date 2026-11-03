terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "security/prod/terraform.tfstate"
    region = "ap-south-1"
  }
}
