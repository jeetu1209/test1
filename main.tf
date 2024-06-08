resource "azurerm_resource_group" "rg2608" {
  name     = var.rg
  location = var.location 
}

resource "azurerm_storage_account" "storage1" {
  name                     = var.storage
  resource_group_name      = var.rg
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.account_replication_type

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "container1" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.storage1.name
  container_access_type = "private"
}