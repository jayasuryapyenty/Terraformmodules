
resource "azurerm_app_service" "webapp" {
  name               = var.webapp_name
  location           = var.webapp_location
  resource_group_name = var.resource_group_name

  app_service_plan_id = var.app_service_plan_id

  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = var.instrumentation_key
  }
}
