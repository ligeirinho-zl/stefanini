# Create the VPC attachment in the second account...
### Pode Comentar o código 
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_attachment" {
  subnet_ids         = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id, aws_subnet.private_subnet_3.id]
  transit_gateway_id = var.tgw_id
  vpc_id             = aws_vpc.vpc.id

  tags = {
    Name = "attachment-${var.env}"
    Side = "Creator"
    env  = "${var.env}"
  }
}