terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
  required_version = "v0.13.4"

  backend "remote" {
    organization = "ateeta"

    workspaces {
      name = "test-tf"
    }
  }
}


provider "aws" {
  region     = var.aws-region
  access_key = var.aws-access-id
  secret_key = var.aws-secret-id

}

