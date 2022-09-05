resource "aws_nat_gateway" "vpc-ngw-1" {
  allocation_id = aws_eip.eip-ngw-1.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "vpc-ngw-1"
    Env  = var.env
  } 
  depends_on = [
    aws_internet_gateway.igw
  ]
}

resource "aws_nat_gateway" "vpc-ngw-2" {
  allocation_id = aws_eip.eip-ngw-2.id
  subnet_id     = aws_subnet.public_subnet_2.id

  tags = {
    Name = "vpc-ngw-2"
    Env  = var.env
  } 
  depends_on = [
    aws_internet_gateway.igw
  ]
}

resource "aws_nat_gateway" "vpc-ngw-3" {
  allocation_id = aws_eip.eip-ngw-3.id
  subnet_id     = aws_subnet.public_subnet_3.id

  tags = {
    Name = "vpc-ngw-3"
    Env  = var.env
  } 
  depends_on = [
    aws_internet_gateway.igw
  ]
}