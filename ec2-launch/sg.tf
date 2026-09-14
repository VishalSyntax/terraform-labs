resource "aws_security_group" "allow_tls" {
  name        = "automate-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_default_vpc.main.id

 

ingress {
  
  cidr_blocks         = ["0.0.0.0/0"]
  from_port         = 22
  protocol       = "tcp"
  to_port           = 22
  description = "Allow ssh"
}

ingress {
  
  cidr_blocks         = ["0.0.0.0/0"]
  from_port         = 80
  protocol       = "tcp"
  to_port           = 80
  description = "Allow http"
}

egress {
  
  cidr_blocks         = ["0.0.0.0/0"]
  from_port         = 0
  protocol       = "-1"
  to_port           = 0
  description = "Allow all"
}

 tags = {
    Name = "automate-sg"
  }
}