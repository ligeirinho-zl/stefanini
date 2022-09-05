resource "aws_eip" "eip-ngw-1" {
  vpc      = false

  tags = {
    Name = "eip-ngw-1"
    Env  = var.env
  }
  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_eip" "eip-ngw-2" {
  vpc      = true

  tags = {
    Name = "eip-ngw-2"
    Env  = var.env
  }
  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_eip" "eip-ngw-3" {
  vpc      = true

  tags = {
    Name = "eip-ngw-3"
    Env  = var.env
  }
  lifecycle {
    prevent_destroy = false
  }
}