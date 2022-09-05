## Require 2 profile

### Production account deployed services
```
# Set a cloud profile
provider "aws" {
  region = var.aws_region
  profile = "default"
}
```

### Conquer management profile terraform centralized repository
```
terraform {
  backend "s3" {
    bucket  = "backend-iaas-tfstates-terraform"
    key     = "terraform/terraform-network-production.tfstate"
    region  = "us-east-2"
    profile = "default"
  }
  required_providers {
    aws = ">= 2.53.0"
  }
}
```
