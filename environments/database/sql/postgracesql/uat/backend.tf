terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "database/fctp/uat/rds/psql/terraform.tfstate"
    region = "ap-south-1"
  }
}
