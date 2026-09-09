terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "compute/Day-04/file-provisinor/terraform.tfstate"
    region = "ap-south-1"
  }
}
