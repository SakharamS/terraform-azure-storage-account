variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "default-rg"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "defaultstorageacc"
}

variable "account_tier" {
  description = "The tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags to apply to the storage account"
  type        = map(string)
  default = {
    environment = "dev"
  }
}

variable "delete_retention_policy_in_days" {
  description = "The number of days that the blob should be retained for"
  type        = number
  default     = "90"
}

variable "identity_type" {
  description = "The identity type of the storage account"
  type        = string
  default     = "SystemAssigned"
  
}