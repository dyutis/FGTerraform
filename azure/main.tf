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

resource "azurerm_storage_account" "fd_sa" {
  name                     = var.name
  resource_group_name      = "indrayan-resources"
  location                 = "centralus"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

variable "name" {
  description = "The resource group name"
}
