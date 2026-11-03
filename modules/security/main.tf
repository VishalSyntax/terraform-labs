resource "aws_security_group" "this" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = {
    Name        = var.sg_name
    Environment = var.environment
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.this.id
  ip_protocol       = "tcp"
  from_port         = 22
  to_port           = 22
  cidr_ipv4         = var.allowed_cidr
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.this.id
  ip_protocol       = "tcp"
  from_port         = 80
  to_port           = 80
  cidr_ipv4         = var.allowed_cidr
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.this.id
  ip_protocol       = "tcp"
  from_port         = 443
  to_port           = 443
  cidr_ipv4         = var.allowed_cidr
}

resource "aws_vpc_security_group_ingress_rule" "icmp" {
  security_group_id = aws_security_group.this.id
  ip_protocol       = "icmp"
  from_port         = -1
  to_port           = -1
  cidr_ipv4         = var.allowed_cidr
}

resource "aws_vpc_security_group_egress_rule" "all_outbound" {
  security_group_id = aws_security_group.this.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}
