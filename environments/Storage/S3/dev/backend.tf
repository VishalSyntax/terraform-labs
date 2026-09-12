terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "Storage/s3-bucket/dev/test/terraform.tfstate"
    region = "ap-south-1"
  }
}
