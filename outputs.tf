output "storage_account_id" {
  description = "The ID of the storage account"
  value       = azurerm_storage_account.sa.id
}

output "storage_account_primary_connection_string" {
  description = "The primary connection string for the storage account"
  value       = azurerm_storage_account.sa.primary_connection_string
}
