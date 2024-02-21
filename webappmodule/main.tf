provider "azurerm" {
  features {}
}
module "webapp_rg" {
  source = "./resource_group"
  resource_group_name = "your-webapp-rg"
  location = "eastus"
}

module "webapp_plan" {
  source = "./appserviceplan"
  service_plan_name = "your-webapp-plan"
  service_plan_location = module.webapp_rg.resource_group_location
  resource_group_name = module.webapp_rg.resource_group_name
  sku_size = "B1"
  sku_tier = "F1"
}

module "webapp_insights" {
  source = "./application_insights"
  insights_name = "your-webapp-insights"
  insights_location = module.webapp_rg.resource_group_location
  resource_group_name = module.webapp_rg.resource_group_name
}

module "webapp" {
  source = "./webapp"
  webapp_name = "your-webapp"
  webapp_location = module.webapp_rg.resource_group_location
  resource_group_name = module.webapp_rg.resource_group_name
  app_service_plan_id = module.webapp_plan.app_service_plan_id
  instrumentation_key = module.webapp_insights.instrumentation_key
}

