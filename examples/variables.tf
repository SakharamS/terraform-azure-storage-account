variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "The tier of the storage account"
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the storage account"
  type        = map(string)
}

variable "delete_retention_policy_in_days" {
  description = "The number of days that the blob should be retained for"
  type        = number
}

variable "identity_type" {
  description = "The type of identity to assign to the storage account"
  type        = string
}