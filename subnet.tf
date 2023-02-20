
# Subnets
resource "aws_subnet" "Asubnet1" {
  # for_each = var.subnet
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"

  tags = {
    Name        = "anuj-subnet2"
    Environment = "Deployment Environment"
  }
}

resource "aws_subnet" "Asubnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
  

  tags = {
    Name        = "anuj-subnet2"
    Environment = "Deployment Environment"
  }
}