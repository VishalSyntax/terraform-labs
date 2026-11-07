terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "DNS/prod/terraform.tfstate"
    region = "ap-south-1"
  }
}
