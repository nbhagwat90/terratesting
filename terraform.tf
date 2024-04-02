terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> "3.74.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"

}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket006"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
