# terraform-azure-storage-account

This Terraform module creates an Azure Storage Account.

## Usage

```hcl
module "storage_account" {
  source = "sakharamshinde/storage-account/azure"
  version = "1.0.0"

  resource_group_name      = "example-rg"
  location                 = "East US"
  storage_account_name     = "examplestorageacc"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = {
    environment = "dev"
  }
}
```

### Input

| Name   | Description | Type | Default | Required |
| ------ | ----------- | ---- | ------- | -------- |
| resource_group_name | The name of the resource group | string | n/a | yes |
| location | The location of the resource group | string | n/a | yes |
| storage_account_name | The name of the storage account | string | n/a | yes |
| account_tier | The tier of the storage account | string | n/a | yes |
| account_replication_type | The replication type of the storage account | string | n/a | yes |
| tags | Tags to apply to the storage account | map(string) | {} | no |


### Outputs:

| Name                                      | Description                                   |
|-------------------------------------------|-----------------------------------------------|
| storage_account_id                        | The ID of the storage account                  |
| storage_account_primary_connection_string | The primary connection string for the storage account |

