terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.5.0"
    }
  }
}
provider "azurerm" {
  features {}
}


# module "create-storage-account" {
#   source               = "./modules/resource_group_storage"
#   resource_group_name  = "test_storage_name"
#   storage_account_name = "teststor4321"
#   path_to_blob_file    = "./testblob.json"
#   container_name       = "mycontainer"
#   blob_name            = "myblob.json"
# }

# module "resource_group_storage" {
#   source = "killingrace/resource_group_storage"
#   version = "1.0.0"
#   location                 = "Poland Central"
#   resource_group_name      = "test_resource_group"
#   storage_account_name     = "teststor4321"
#   account_replication_type = "LRS"
#   path_to_blob_file        = "./testblob.json"
#   container_name           = "mycontainer"
#   blob_name                = "myblob.json"
# }

# Cant push module to Terraform registry due to unexpected issues with terraform cloud so I provide installation via GitHub Repository



module "resource_group_storage" {
  source                   = "git::https://github.com/Killingrace/terraform-azurerm-resource_group_storage.git"
  location                 = "Poland Central"
  resource_group_name      = "test_resource_group"
  storage_account_name     = "teststor4321"
  account_replication_type = "LRS"
  path_to_blob_file        = "./testblob.json"
  container_name           = "mycontainer"
  blob_name                = "myblob.json"
}