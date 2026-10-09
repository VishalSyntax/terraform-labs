terraform {
  backend "s3" {

    bucket = "localhost.vishalcloud.qd.je" # this must be your s3 bucket name
    key    = "network/fctp/dev/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}
