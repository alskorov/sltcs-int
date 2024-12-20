provider "aws" {
  region = local.region
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53"
    }
  }
}


terraform {
  backend "s3" {
    bucket         = local.bucket
    key            = "terraform.tfstate"
    region         = local.region
  }
}
