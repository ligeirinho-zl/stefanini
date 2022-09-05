 resource "aws_s3_bucket" "s3_bucket_tfstate" {
  bucket = "bancoterraform2024242"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3_bucket_tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}
