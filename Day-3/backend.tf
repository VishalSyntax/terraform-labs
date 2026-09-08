terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "day3/terraform.tfstate"
    region = "ap-south-1"
  }
}
