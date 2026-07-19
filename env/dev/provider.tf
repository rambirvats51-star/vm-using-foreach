terraform {
  backend "azurerm" {
    resource_group_name="MyResourceGroup"
    storage_account_name = "mystorageaccount51"
    container_name = "ram"
    key="om.tfstatefile"
    
  }
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
  subscription_id ="0cce191c-96fe-47d5-a2f4-6358dce7ce1b"
}