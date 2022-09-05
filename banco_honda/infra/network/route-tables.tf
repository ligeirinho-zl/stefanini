# Public Route Tables
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "public-rt"
    Env  = var.env
  }
  depends_on = [
    aws_internet_gateway.igw
  ]
}

# Private Route Tables 
resource "aws_route_table" "private-rt-1" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "private-rt-1"
    Env  = var.env
  }
  depends_on = [
    aws_nat_gateway.vpc-ngw-1
  ]
}

resource "aws_route_table" "private-rt-2" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "private-rt-2"
    Env  = var.env
  }
  depends_on = [
    aws_nat_gateway.vpc-ngw-2
  ]
}

resource "aws_route_table" "private-rt-3" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "private-rt-3"
    Env  = var.env
  }
  depends_on = [
    aws_nat_gateway.vpc-ngw-3
  ]
}