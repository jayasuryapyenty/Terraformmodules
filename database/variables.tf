variable "identity_name" {
  description = "The name of the user-assigned identity."
  type        = string
}

variable "location" {
  description = "The location for all resources."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "sql_server_name" {
  description = "The name of the SQL server."
  type        = string
}

variable "sql_admin_login" {
  description = "The administrator login for the SQL server."
  type        = string
}

variable "sql_admin_password" {
  description = "The administrator password for the SQL server."
  type        = string
}

variable "database_name" {
  description = "The name of the SQL database."
  type        = string
}

#variable "database_tags" {
#  description = "Tags to be applied to the SQL database."
#  type        = map(string)
#}

variable "key_vault_name" {
  description = "The name of the key vault."
  type        = string
}

variable "key_name" {
  description = "The name of the key in the key vault."
  type        = string
}

