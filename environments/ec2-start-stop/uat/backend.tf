terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "ec2-start-stop/uat/terraform.tfstate"
    region = "ap-south-1"
  }
}
