terraform {
  # backend "azurerm" {
  #   resource_group_name="MyResourceGroup"
  #   storage_account_name = "mystorageaccount51"
  #   container_name = "ram"
  #   key="om.tfstatefile"
    
  # }
  required_version = ">= 1.9.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.79.0"
    }
  }
}

provider "azurerm" {
  features {}

}