provider "azurerm" {
  features {}
}
module "webapp_rg" {
  source = "./resource_group"
  resource_group_name = var.resource_group_name
  location = var.location
}

module "webapp_plan" {
  source = "./appserviceplan"
  service_plan_name = var.service_plan_name
  service_plan_location = module.webapp_rg.resource_group_location
  resource_group_name = module.webapp_rg.resource_group_name
  sku_size = var.sku_size
  sku_tier = var.sku_tier
  }

module "webapp_insights" {
  source = "./application_insights"
  insights_name = var.insights_name
  insights_location = module.webapp_rg.resource_group_location
  resource_group_name = module.webapp_rg.resource_group_name
}

module "webapp" {
  source = "./webapp"
  webapp_name = var.webapp_name
  webapp_location = module.webapp_rg.resource_group_location
  resource_group_name = module.webapp_rg.resource_group_name
  app_service_plan_id = module.webapp_plan.app_service_plan_id
  instrumentation_key = module.webapp_insights.instrumentation_key
}

