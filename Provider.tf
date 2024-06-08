terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }

  
backend "azurerm" {
    resource_group_name  = "storagerg"
    storage_account_name = "storageluck"
    container_name       = "statefil21"
    key                  = "statefile25.prod"
    }

}


provider "azurerm" {
  features {}
}