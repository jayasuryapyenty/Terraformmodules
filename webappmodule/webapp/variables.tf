# web_app/main.tf
variable "webapp_name" {
  description = "The name of the web application."
}

variable "webapp_location" {
  description = "The location of the web application."
}

variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "app_service_plan_id" {
  description = "The ID of the app service plan."
}

variable "instrumentation_key" {
  description = "The instrumentation key of the application insights."
}
