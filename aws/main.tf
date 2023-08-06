terraform {
	  backend "s3" {
    bucket = "fg-bucket-01"
    key    = "dyuti/aws/terraform.tfstate"
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "fd_bucket" {
  bucket = "fd-008-bucket"  # Replace with your desired bucket name
  acl    = "private"
  }

variable "region" {
  type        = string
}
