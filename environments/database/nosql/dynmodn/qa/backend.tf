terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "database/fctp/qa/nosql/dynamodb/terraform.tfstate"
    region = "ap-south-1"
  }
}
