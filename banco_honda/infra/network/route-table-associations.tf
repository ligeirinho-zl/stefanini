# Public Route Table Associations
resource "aws_route_table_association" "public--rta-1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public-rt.id

  depends_on = [
    aws_route_table.public-rt
  ]
}

resource "aws_route_table_association" "public-rta-2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public-rt.id

  depends_on = [
    aws_route_table.public-rt
  ]
}

resource "aws_route_table_association" "public-rta-3" {
  subnet_id      = aws_subnet.public_subnet_3.id
  route_table_id = aws_route_table.public-rt.id

  depends_on = [
    aws_route_table.public-rt
  ]
}

# Private Route Table Associations
resource "aws_route_table_association" "private-rta-1" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private-rt-1.id

  depends_on = [
    aws_route_table.private-rt-1
  ]
}

resource "aws_route_table_association" "private-rta-2" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private-rt-2.id

  depends_on = [
    aws_route_table.private-rt-2
  ]
}

resource "aws_route_table_association" "private-rta-3" {
  subnet_id      = aws_subnet.private_subnet_3.id
  route_table_id = aws_route_table.private-rt-3.id

  depends_on = [
    aws_route_table.private-rt-3
  ]
}
