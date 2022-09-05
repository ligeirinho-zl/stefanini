# Set a cloud provider
provider "aws" {
  region  = var.aws_region
  profile = "default"
}

terraform {
  backend "s3" {
    bucket  = "terraformstate2022v1"
    key     = "terraform/terraform-network.tfstate"
    region  = "ca-central-1"
    profile = "default"
  }
  required_providers {
    aws = ">= 2.53.0"
  }
}
