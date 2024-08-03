provider "azurerm" {
  features {}
}

locals {
  config = jsondecode(file("terraform.tfvars.json"))
}

module "resource_group" {
  source  = "SakharamS/resource-group/azure"
  version = "~> 1.0"

  resource_group_name      = local.config.resource_group_name
  location                 = local.config.location
}

module "storage_account" {
  source  = "SakharamS/storage-account/azure"
  version = "~> 1.0"

  resource_group_name      = local.config.resource_group_name
  location                 = local.config.location
  storage_account_name     = local.config.storage_account_name
  account_tier             = local.config.account_tier
  account_replication_type = local.config.account_replication_type
  delete_retention_policy_in_days = local.config.delete_retention_policy_in_days
  tags                     = local.config.tags
}