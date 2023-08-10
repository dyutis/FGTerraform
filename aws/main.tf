terraform {
	  backend "s3" {
    bucket = "fg-bucket-01"
    key    = "dyuti/awstest/terraform.tfstate"
  }
}

provider "aws" {
  region = "${{TF_AWS_REGION}}"
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
