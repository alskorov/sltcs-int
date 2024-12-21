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

  backend "s3" {
    bucket         = "aleksey-tf-state"
    key            = "terraform.tfstate"
    region         = "us-west-2"
  }
}





