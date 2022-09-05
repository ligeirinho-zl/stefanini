# Set a cloud provider
provider "aws" {
  region = var.aws_region
  profile = "default"
}

terraform {
  backend "s3" {
    bucket  = "terraformtfsatelab"
    key     = "terraform/terraform-cf-production.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
  required_providers {
    aws = ">= 2.53.0"
  }
}
