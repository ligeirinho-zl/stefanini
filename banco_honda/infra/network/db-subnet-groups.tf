resource "aws_db_subnet_group" "group" {
  name       = var.env
  subnet_ids = [ aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id, aws_subnet.private_subnet_3.id ]

  tags = {
    Name = var.env
    Env = var.env
  }
}