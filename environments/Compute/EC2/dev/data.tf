data "terraform_remote_state" "vpc_backend" {
 backend = "s3"

  config = {
    bucket = "my-terraform-remote-back"
    key    = "Networking/vpc/dev/terraform.tfstate"
    region = "ap-south-1"

}
}