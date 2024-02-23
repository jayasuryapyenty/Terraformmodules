
output "database_id" {
  value = azurerm_mssql_database.example.id
}

output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

output "sql_server_id" {
  value = azurerm_mssql_server.example.id
}

output "key_vault_id" {
  value = azurerm_key_vault.example.id
}

output "key_id" {
  value = azurerm_key_vault_key.example.id
}
output "resource_group_id" {
  value = azurerm_resource_group.example.id
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "location" {
  value = azurerm_resource_group.example.location
}

