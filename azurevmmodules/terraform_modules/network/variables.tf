variable "location" {
  type        = string
  default     = "eastus2"
  description = "location for vent & subnet deployments"
  validation {
    condition     = contains(["eastus2", "centralus"], lower(var.location))
    error_message = "Unsupported Azure Region specified for network. Only East US2 and Central US Azure Regions are supported."
  }
}
variable "rg_Name" {
  type        = string
  default     = ""
  description = "Resource group name to deploy the resources"
}
variable "vnet_Name" {
  type        = string
  default     = ""
  description = "Name of the vnet to create "

}
variable "vnet_Address" {
  type        = string
  default     = ""
  description = "The address space that is used by the virtual network"
}
variable "subnet_NameList" {
  type        = list(string)
  default     = [""]
  description = "List of subnet names inside the Vnet"
  
}
variable "subnet_AddressList" {
  type        = list(string)
  default     = [""]
  description = "The address prefix to use for the subnet."
}
