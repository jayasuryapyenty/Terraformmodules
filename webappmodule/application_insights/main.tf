# application_insights
resource "azurerm_application_insights" "webapp_insights" {
  name                = var.insights_name
  location            = var.insights_location
  resource_group_name = var.resource_group_name
  application_type    = "web"
  retention_in_days   = 30
}
