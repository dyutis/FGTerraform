terraform {
	  backend "s3" {
    bucket = "fg-bucket-01"
    key    = "dyuti/aws/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "fd_bucket" {
  bucket = "fd-007-bucket"  # Replace with your desired bucket name
  acl    = "private"
  }
