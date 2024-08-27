terraform {
  required_version = "~> 1.3"

  backend "s3" {
    bucket = "terraform-project-r1"
    key = "state.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-table"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.4"
    }

    random = {
       source = "hashicorp/random"
       version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = var. AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  default_tags {
    tags = {
      CreatedBy = "Terraform"
    }
  }
}