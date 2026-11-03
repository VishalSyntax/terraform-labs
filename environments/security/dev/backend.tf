terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "security/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
