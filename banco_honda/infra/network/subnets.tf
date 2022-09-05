# Subnets
## Public
resource "aws_subnet" "public_subnet_1" {
  availability_zone = "us-west-2a"
  cidr_block        = var.subnet_pub_cidr_blocks[0]
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name                               = "subnet-public-1-${var.env}"
    Env                                = var.env
    "kubernetes.io/cluster/${var.env}" = "shared"
    "kubernetes.io/role/elb"           = "1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  availability_zone = "us-west-2b"
  cidr_block        = var.subnet_pub_cidr_blocks[1]
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name                               = "subnet-public-2-${var.env}"
    Env                                = var.env
    "kubernetes.io/cluster/${var.env}" = "shared"
    "kubernetes.io/role/elb"           = "1"
  }
}

resource "aws_subnet" "public_subnet_3" {
  availability_zone = "us-west-2c"
  cidr_block        = var.subnet_pub_cidr_blocks[2]
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name                               = "subnet-public-3-${var.env}"
    Env                                = var.env
    "kubernetes.io/cluster/${var.env}" = "shared"
    "kubernetes.io/role/elb"           = "1"
  }
}

## Private
resource "aws_subnet" "private_subnet_1" {
  availability_zone = "us-west-2a"
  cidr_block        = var.subnet_prv_cidr_blocks[0]
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name                               = "subnet-private-1-${var.env}"
    Env                                = var.env
    "kubernetes.io/cluster/${var.env}" = "shared"
    "kubernetes.io/role/internal-elb"  = "1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  availability_zone = "us-west-2b"
  cidr_block        = var.subnet_prv_cidr_blocks[1]
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name                               = "subnet-private-2-${var.env}"
    Env                                = var.env
    "kubernetes.io/cluster/${var.env}" = "shared"
    "kubernetes.io/role/internal-elb"  = "1"
  }
}

resource "aws_subnet" "private_subnet_3" {
  availability_zone = "us-west-2c"
  cidr_block        = var.subnet_prv_cidr_blocks[2]
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name                               = "subnet-private-3-${var.env}"
    Env                                = var.env
    "kubernetes.io/cluster/${var.env}" = "shared"
    "kubernetes.io/role/internal-elb"  = "1"
  }
}