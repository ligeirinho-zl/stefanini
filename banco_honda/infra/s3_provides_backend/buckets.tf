resource "aws_s3_bucket" "startdigital-production-iaas-tfstates-terraform" {
  bucket = "backenddddd-iaas-tfstates-terraform"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "backend-iaas-tfstates-terraform"
    Env  = "production"
    Project = "infrastructure"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "startdigital-production-iaas-tfstates-terraform" {
  bucket = aws_s3_bucket.startdigital-production-iaas-tfstates-terraform.id

  block_public_acls   = true
  block_public_policy = true
}
