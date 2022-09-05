# Subnet Default Internet Route
# Management
resource "aws_route" "r-pub-internet" {
  route_table_id            = aws_route_table.public-rt.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = aws_internet_gateway.igw.id
}

resource "aws_route" "r-int-internet-1" {
  route_table_id            = aws_route_table.private-rt-1.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id                = aws_nat_gateway.vpc-ngw-1.id
}

resource "aws_route" "r-int-internet-2" {
  route_table_id            = aws_route_table.private-rt-2.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id                = aws_nat_gateway.vpc-ngw-2.id
}

resource "aws_route" "r-int-internet-3" {
  route_table_id            = aws_route_table.private-rt-3.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id                = aws_nat_gateway.vpc-ngw-3.id
}

# Routes production-01 to management
## Pode Comentar ###
resource "aws_route" "r-production-01-to-mgmt-1" {
  route_table_id            = aws_route_table.private-rt-1.id
  destination_cidr_block    = "10.254.0.0/16"
  transit_gateway_id        = var.management_aws_ec2_transit_gateway_id
}

resource "aws_route" "r-production-01-to-mgmt-2" {
  route_table_id            = aws_route_table.private-rt-2.id
  destination_cidr_block    = "10.254.0.0/16"
  transit_gateway_id        = var.management_aws_ec2_transit_gateway_id
}

resource "aws_route" "r-production-01-to-mgmt-3" {
  route_table_id            = aws_route_table.private-rt-3.id
  destination_cidr_block    = "10.254.0.0/16"
  transit_gateway_id        = var.management_aws_ec2_transit_gateway_id
}