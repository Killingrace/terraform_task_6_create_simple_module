resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "name" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}


resource "azurerm_storage_container" "name" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.name.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "name" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.name.name
  type                   = var.blob_type
  source                 = var.path_to_blob_file
  storage_container_name = azurerm_storage_container.name.name
}