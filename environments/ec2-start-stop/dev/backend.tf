terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "ec2-start-stop/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
