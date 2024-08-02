resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = "TLS1_2"
  blob_properties {
    delete_retention_policy {
      days = var.delete_retention_policy_in_days
    }
  }
  identity {
    type = var.identity_type
  }
  tags = var.tags
}
