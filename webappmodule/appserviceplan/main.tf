# app_service_plan

resource "azurerm_app_service_plan" "webapp_plan" {
  name                = var.service_plan_name
  location            = var.service_plan_location
  resource_group_name = var.resource_group_name

  sku {
    size = var.sku_size
    tier = var.sku_tier
  }
}
