
resource "aws_instance" "web-ec2a" {
  for_each = var.tag-map-nested
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id               = aws_subnet.Asubnet1.id
  security_groups         = [aws_security_group.anuj_scgp.id]
  tags = {
    Name = each.value.n1
    Owner = var.tag-Owner
  }
  volume_tags = {
    Name = each.value.n1
    Owner = var.tag-Owner
  }
}

resource "aws_instance" "web-ec2b" {
  for_each = var.tag-map-nested
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id               = aws_subnet.Asubnet2.id
  security_groups         = [aws_security_group.anuj_scgp.id]
  tags = {
    Name = each.value.n2
    Owner = var.tag-Owner
  }
  volume_tags = {
    Name = each.value.n2
    Owner = var.tag-Owner
  }
}