terraform {
	  backend "azurerm" {
    resource_group_name  = "indrayan-resources"
    storage_account_name = "terraform77demo"
    container_name       = "azure"
    key    = "test/terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
}
  
resource "azurerm_resource_group" "fd_rg" {
  name     = var.name
  location = "West Europe"
}

variable "name" {
  description = "The resource group name"
}


