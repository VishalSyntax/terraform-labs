terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "compute/Day-04/remote-exec/terraform.tfstate"
    region = "ap-south-1"
  }
}
