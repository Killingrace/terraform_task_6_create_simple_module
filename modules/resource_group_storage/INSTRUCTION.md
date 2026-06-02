# Azure Storage Account & Blob Container Terraform Module

[![Terraform Version](https://img.shields.io/badge/Terraform-%3E%3D%201.0.0-blueviolet.svg)](https://www.terraform.io)
[![Azure Provider](https://img.shields.io/badge/azure--rm-4.75.0-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/4.75.0)

A Terraform module to provision a basic storage infrastructure on Microsoft Azure. This module creates an Azure Resource Group, a Storage Account (Standard/LRS), a Storage Container, and uploads an initial Blob file.

## Features

- **Resource Group Management:** Automatically provisions a dedicated resource group.
- **Storage Account:** Configures a standard storage account with Local Redundant Storage (LRS).
- **Blob Container:** Creates a container with customizable access levels.
- **Blob Upload:** Supports uploading a local file directly into the container during deployment.

---

## Requirements

| Name | Version |
|:---|:---|
| **Terraform** | `>= 1.0.0` |
| **azurerm** | `3.5.0` |

## Providers

| Name | Version |
|:---|:---|
| **azurerm** | `3.5.0` |

---

## Inputs

| Name | Description | Type | Required |
|:---|:---|:---:|:---:|
| **`resource_group_name`** | The name of the Azure Resource Group. | `string` | **Yes** |
| **`location`** | The Azure region where resources will be created (e.g., `East US`, `West Europe`). | `string` | **Yes** |
| **`storage_account_name`** | Specifies the name of the Storage Account. Must be globally unique, 3-24 characters, lowercase letters and numbers only. | `string` | **Yes** |
| **`container_name`** | The name of the Storage Container. | `string` | **Yes** |
| **`container_access_type`** | The Access Level for this Container. Possible values are `blob`, `container` or `private`. | `string` | **Yes** |
| **`blob_name`** | The name of the Blob file to be created in the container. | `string` | **Yes** |
| **`blob_type`** | The type of the Blob. Possible values are `Block`, `Page` or `Append`. | `string` | **Yes** |
| **`path_to_blob_file`** | The local absolute or relative path to the file you want to upload. | `string` | **Yes** |

---

## Outputs

| Name | Description |
|:---|:---|
| **`resource_group_name`** | The name of the created Resource Group. |
| **`storage_account_id`** | The ID of the created Storage Account. |
| **`storage_container_id`** | The ID of the created Storage Container. |
| **`blob_url`** | The URL of the uploaded Blob file. |

---

## Usage Example

Integrate this module into your Terraform configuration as shown below:

```hcl
module "azure_storage_infrastructure" {
  source = "git::[https://github.com/your-username/terraform-azurerm-storage.git](https://github.com/your-username/terraform-azurerm-storage.git)" # Or local path like "./modules/storage"

  resource_group_name   = "rg-production-data"
  location              = "East US"
  storage_account_name  = "stproddataall2026"
  container_name        = "app-assets"
  container_access_type = "private"

  blob_name         = "initial-setup.json"
  blob_type         = "Block"
  path_to_blob_file = "${path.module}/files/config.json"
}

```

## How to Deploy

1. **Initialize Terraform:**
Initialize the directory, download the required Azure provider, and configure the backend.
```bash
terraform init

```


2. **Plan Deployment:**
Review the execution plan to see the resources that will be created.
```bash
terraform plan

```


3. **Apply Changes:**
Deploy the infrastructure to your Azure subscription.
```bash
terraform apply

```


4. **Destroy Infrastructure (Optional):**
To clean up and remove all resources created by this module:
```bash
terraform destroy

```



## License

This project is licensed under the MIT License - see the LICENSE file for details.
