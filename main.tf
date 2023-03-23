terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.59.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-s3-bucket-gozterra-001"
  versioning {
    enabled = true
  }
}

resource "aws_iam_user" "my_iam_user" {
  name = "my_iam_user_gozie"
}