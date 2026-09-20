resource "aws_key_pair" "deployer" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key-ec2.pub")
  }
  
  resource "aws_default_vpc" "main" {
  tags = {
    Name = "Default VPC"
  }
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [aws_default_vpc.main.id]
  }
}

resource "aws_instance" "my-insta" {
  key_name      = aws_key_pair.deployer.key_name
  instance_type = var.aws_instance_type
  subnet_id     = tolist(data.aws_subnets.default.ids)[0]
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true

  ami = var.ec2_amiid

  root_block_device {
    volume_size = var.root_storage_size
    volume_type = "gp3"

    tags = {
      Name = "automated-insta"
    }
  }

  tags = {
    Name = "test-sns"
  }
}