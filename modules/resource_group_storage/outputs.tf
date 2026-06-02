output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "blob_id" {
  value = azurerm_storage_blob.name.id
}

output "storage_container_id" {
  value = azurerm_storage_container.name.id
}

output "blob_url" {
  value = azurerm_storage_blob.name.url
}