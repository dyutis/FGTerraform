terraform {
	  backend "s3" {
    bucket = "fg-bucket-02"
    key    = "dyuti/awsunt/terraform.tfstate"
  }
}

provider "aws" {
region = "ap-south-1"
}

resource "aws_s3_bucket" "fd_bucket" {
  bucket = var.name  # Replace with your desired bucket name
  acl    = var.acl
  }

variable "name" {
  description = "The bucket name"
}

variable "acl" {
  description = "if private then blocks all public access"
}
