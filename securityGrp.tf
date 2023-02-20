# ************************* security groups ***************************
resource "aws_security_group" "anuj_scgp" {
  vpc_id      = aws_vpc.vpc.id
  name        = "anuj_scgp"
  description = "Allow TLS inbound traffic"

  tags = {
    Name        = "anuj_scgp"
    Owner        = var.tag-Owner

  }
 dynamic "ingress" {
   for_each = [443, 80]
   iterator = port
   content {
    description      = "HTTPS"
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
 }
  #   ingress {
  #   description      = "HTTPS"
  #   from_port        = 443
  #   to_port          = 443
  #   protocol         = "tcp"
  #   cidr_blocks      = ["0.0.0.0/0"]
  # }

  # ingress {
  #   description      = "HTTP"
  #   from_port        = 80
  #   to_port          = 80
  #   protocol         = "tcp"
  #   cidr_blocks      = ["0.0.0.0/0"]
  # }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"     
    cidr_blocks      = ["0.0.0.0/0"]
  }
}