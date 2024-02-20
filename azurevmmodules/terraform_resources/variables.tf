## Subscription ID, Resource Group and Location set. These are kept universal in this code. ####
variable "subscription_id" {
  type    = string
  default = "09551a3e-fd9c-4de1-a790-4a68489dc449"
}
variable "location" {
  type    = string
  default = "eastus2"
}
variable "rg_Name" {
  type    = string
  default = "Terraformtesting"
}

### VNET Module Variables Start ###

variable "vnet_Name" {
  type    = string
  default = "Terraformtesting"
}
variable "vnet_Address" {
  type    = string
  default = "190.200.0.0/16"
}
variable "subnet_NameList" {
  type    = list(string)
  default = ["subnet1"]
}
variable "subnet_AddressList" {
  type    = list(string)
  default = ["190.200.1.0/24"]
}

## Pre defined KV details
variable "devKV_Name" {
  type    = string
  default = "terraformtesting1"
}
#### Variables for windows Virtual Module defined here ####

variable "vm_pip" {
  type        = string
  default     = "Terraformtesting"
  description = "Name of the Public IP instance assigned to the Virtual Machine"
}
variable "pip_allocation" {
  type    = string
  default = "static"
  validation {
    condition     = contains(["static", "dynamic"], lower(var.pip_allocation))
    error_message = "Public IP assignment can be either Static or Dynamic. Please correct your selection."
  }
  description = "Public IP assignment type"
}
variable "vm_nic" {
  type        = string
  default     = "Terraformtesting"
  description = "Network Interface card name assigned to the Virtual Machine"
}

variable "ip_configuration" {
  type        = string
  default     = "Terraformtesting"
  description = "IP configuration name for the Virtual Machine."
}
variable "vm_name" {
  type        = string
  default     = "modulesvm"
  description = "Name of the Virtual Machine to be created."
}
variable "vm_size" {
  type        = string
  default     = "Standard_B1s"
  description = "Virtual Machine \"Size\"SKU\" to be created such as : Standard_F2"
}
variable "vm_username" {
  type        = string
  default     = "admin"
  description = "Username for Azure Virtual Machine"
}
variable "vm_password" {
  type        = string
  default     = "Admin@123"
  description = "Password for Azure Virtual Machine"
}

variable "vm_image_publisher" {
  type        = string
  default     = "MicrosoftWindowsServer"
  description = "Azure Virtual Machine Publisher such as : MicrosoftWindowsServer."
}
variable "vm_image_offer" {
  type        = string
  default     = "WindowsServer"
  description = "Image Offer for the Publisher selected. Available options can be : WindowsServer."
}
variable "vm_image_sku" {
  type        = string
  default     = "2019-Datacenter"
  description = "Image Version or SKU for the publisher you have chosen. Such as 2019-Datacenter, 2016-Datacenter, etc."
}
variable "vm_image_version" {
  type        = string
  default     = "Latest"
  description = "This is the Image Version of the SKU that you have selected. Usually the selected option is \"Latest\". "
}
variable "vm_os_disk_strg_type" {
  type        = string
  default     = "Standard_LRS"
  description = "OS Disk Storage Type. Possible options are Standard_LRS, StandardSSD_LRS and Premium_LRS."
  validation {
    condition     = contains(["Standard_LRS", "StandardSSD_LRS", "Premium_LRS"], var.vm_os_disk_strg_type)
    error_message = "Unsupported disk type for Virtual machine. Possible options are Standard_LRS, StandardSSD_LRS and Premium_LRS."
  }
}

variable "vm_os_disk_caching" {
  type        = string
  default     = "ReadWrite"
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite."
  validation {
    condition     = contains(["None", "ReadOnly", "ReadWrite"], var.vm_os_disk_caching)
    error_message = "Unsupported value for disk caching. Possible values are None, ReadOnly and ReadWrite."
  }

}

variable "virtual_machine_Usr" {
  type        = string
  default     = "Admin"
  description = "Username for Azure Virtual Machine. This will be fetched from Key Vault."
}

variable "virtual_machine_Password" {
 type        = string
 default     = "Admin@123"
  description = "Password for Azure Virtual Machine. This will be fetched from Key Vault."
}

# variable "vm_subnetid" {
#   type        = string
#   description = "Subnet Id for the Virtual machine. This will be fetched from Network Module."
# }
