resource "aws_key_pair" "deployer" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key-ec2.pub")
  }
  
  resource "aws_default_vpc" "main" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_instance" "my-insta" {
key_name	= aws_key_pair.deployer.key_name
  
  instance_type = var.aws_instance_type
  security_groups = [aws_security_group.allow_tls.name]
  
  ami = var.ec2_amiid
  
  root_block_device {
  volume_size = var.root_storage_size
  volume_type = "gp3"
  
  tags = {
    Name = "automated-insta"
  }
  
  }

  tags = {
    Name = "automated-server"
  }
  }