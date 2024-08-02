provider "azurerm" {
  features {}
}

module "storage_account" {
  source  = "SakharamS/storage-account/azure"
  version = "1.0.0"

  resource_group_name      = jsondecode(file("example.tfvars.json")).resource_group_name
  location                 = jsondecode(file("example.tfvars.json")).location
  storage_account_name     = jsondecode(file("example.tfvars.json")).storage_account_name
  account_tier             = jsondecode(file("example.tfvars.json")).account_tier
  account_replication_type = jsondecode(file("example.tfvars.json")).account_replication_type
  tags                     = jsondecode(file("example.tfvars.json")).tags
}
