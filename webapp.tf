# Configure Azure Provider (Latest version recommended)
provider "azurerm" {
  features {}
}

# Create Resource Group
resource "azurerm_resource_group" "webapp_rg" {
  name     = "your-webapp-rg"
  location = "eastus"
}

# Create Service Plan (Updated configuration)
resource "azurerm_app_service_plan" "webapp_plan" {
  name                = "your-webapp-plan"
  location            = azurerm_resource_group.webapp_rg.location
  resource_group_name  = azurerm_resource_group.webapp_rg.name

  # Specify required attributes
  sku {
    size = "B1"
    tier = "F1" # Or other desired tier
  }

  # ... other service plan settings ...
}

# Create Application Insights
resource "azurerm_application_insights" "webapp_insights" {
  name                = "your-webapp-insights"
  location            = azurerm_resource_group.webapp_rg.location
  resource_group_name  = azurerm_resource_group.webapp_rg.name
  application_type    = "web"
  retention_in_days  = 30 # Retention period for telemetry data
}

# Create Web Application (Using correct reference)
resource "azurerm_app_service" "webapp" {
  name               = "your-webapp"
  location           = azurerm_resource_group.webapp_rg.location
  resource_group_name = azurerm_resource_group.webapp_rg.name

  # Use app_service_plan_id attribute
  app_service_plan_id = azurerm_app_service_plan.webapp_plan.id

  # ... other web app settings ...
  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = azurerm_application_insights.webapp_insights.instrumentation_key
  }
}

# Optional: Deployment (Adjust based on your deployment method)
resource "null_resource" "deploy_webapp" {
  triggers = {
    always = true
  }
  provisioner "local-exec" {
    command = "az webapp deploy --resource-group ${azurerm_resource_group.webapp_rg.name} --name ${azurerm_app_service.webapp.name} --source-path ./your-app-files"
  }
}
