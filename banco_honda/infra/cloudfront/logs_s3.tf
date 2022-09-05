resource "aws_s3_bucket" "log" {
  bucket = "start-digital-logs-cf-${random_string.r.result}-${var.env}"

  tags = {
    Name = "start-digital-logs-cf-${random_string.r.result}-${var.env}"
  }
}
