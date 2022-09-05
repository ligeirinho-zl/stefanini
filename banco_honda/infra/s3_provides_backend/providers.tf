# Set a cloud provider
provider "aws" {
  region = var.aws_region
  profile = "default"
}
