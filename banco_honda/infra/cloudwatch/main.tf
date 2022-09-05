terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket = "bancoterraform2024242"
    key    = "terraform/cloudwhatch.tfstate"
    region = "ca-central-1"
  }
}


provider "aws" {
  region = "ca-central-1"

}

