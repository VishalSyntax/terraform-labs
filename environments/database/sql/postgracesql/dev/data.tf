data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "my-terraform-remote-back"
    key    = "network/fctp/dev/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "kms" {
  backend = "s3"
  config = {
    bucket = "my-terraform-remote-back"
    key    = "security/fctp/dev/kms/terraform.tfstate"
    region = "ap-south-1"
  }
}
