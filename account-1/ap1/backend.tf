terraform {
  backend "s3" {
    bucket         = "tf-state-bucket-287563783486"
    region         = "us-west-2"
    key            = "s3-account1/terraform.tfstate"
    encrypt = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}