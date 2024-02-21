# application_insights
output "instrumentation_key" {
  value = azurerm_application_insights.webapp_insights.instrumentation_key
}