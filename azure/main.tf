terraform {
	  backend "azurerm" {
    resource_group_name  = "indrayan-resources"
    storage_account_name = "terraform77demo"
    container_name       = "azure"
    key    = "test/terraform.tfstate"
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
