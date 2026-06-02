variable "resource_group_name" {
  type        = string
  default     = "default_name_rg"
  description = "Name of resource group"
}

variable "location" {
  type        = string
  default     = "West US"
  description = "Location for resources"
}

variable "storage_account_name" {
  type        = string
  default     = "defstoraccname123"
  description = "Storage Account name"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "Storage Account Tier"
}

variable "account_replication_type" {
  description = "Storage Account Replication Type"
  type        = string
  default     = "LRS"
}

variable "container_name" {
  type        = string
  default     = "default-container"
  description = "Name of created container"
}

variable "container_access_type" {
  type        = string
  default     = "private"
  description = "Container Access Type"
}

variable "blob_name" {
  type    = string
  default = "blob.tag.gzip"
}

variable "blob_type" {
  type        = string
  description = "Blob Type"
  default     = "Block"
}

variable "path_to_blob_file" {
  type        = string
  description = "Path on local machine to blob file that will be added to storage account container"
  default     = "./testfile.tar.gzip"
}