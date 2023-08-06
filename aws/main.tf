terraform {
	  backend "s3" {
    bucket = "fg-bucket-01"
    key    = "dyuti/aws/terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "fd_bucket" {
  bucket = "fd-009-bucket"  # Replace with your desired bucket name
  acl    = "private"
  }

variable "aws_region" {
  description = "The AWS region where the S3 bucket will be created."
  default     = "us-east-1"  # You can set a default value, but it can be overridden during runtime.
}
