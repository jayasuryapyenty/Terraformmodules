##resourcegroup vars
variable "resource_group_name" {
  type    = string
  default = "your-webapp-rg"
}
variable "location" {
  type    = string
  default = "eastus"
}

## webapp_plan vars

variable "service_plan_name" {
  type    = string
  default = "your-webapp-plan"
}

variable "sku_size" {
  type    = string
  default = "B1"
}

variable "sku_tier" {
  type    = string
  default = "F1"
}

## webapp_insights vars


variable "insights_name" {
  type    = string
  default = "your-webapp-insights"
}

##webapp vars

variable "webapp_name" {
  type    = string
  default = "your-webapp"
}
