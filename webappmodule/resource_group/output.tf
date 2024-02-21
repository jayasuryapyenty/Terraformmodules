# resource_group
output "resource_group_id" {
  value = azurerm_resource_group.webapp_rg.id
}

output "resource_group_name" {
  value = azurerm_resource_group.webapp_rg.name
}

output "resource_group_location" {
  value = azurerm_resource_group.webapp_rg.location
}

