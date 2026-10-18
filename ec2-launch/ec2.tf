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
  #count = 3 #meta argument
  
  for_each = tomap({
    my-automate-micro       = "t2.micro"
    my-automate-medium = "t2.medium"
  })
  depends_on = [aws_security_group.allow_tls, aws_key_pair.deployer]
  ami = var.ec2_amiid
  user_data = file("install_nginx.sh")
  
  root_block_device {
  volume_size = var.env == "prd" ? 20 : var.ec2_default_root_storage_size
  volume_type = "gp3"
  
  
  
  }

  tags = {
    Name = each.key
  }
  }

/* resource "aws_instance" "new_tfin" {
  ami = "unknown"
  instance_type = "unknown"
} */