subscription_id = "09551a3e-fd9c-4de1-a790-4a68489dc449"
## Pre Defined KV for storing secret
devKV_Name         = "terraformtesting1"       #### We have to change as per env

## VNET - SUBNET
rg_Name            = "Terra-Test" ## We have to change as per env
location           = "eastus2"
vnet_Name          = "vnet1terraform"
vnet_Address       = "178.29.192.0/20"
subnet_NameList    = ["subnet1","subnet2"]
subnet_AddressList = ["178.29.192.0/26", "178.29.192.64/26"]


### Windows Machine Deployment

virtual_machine_Usr    = "virtual-machine-user"
virtual_machine_Passwd = "virtual-machine-Password"
vm_pip                 = "public_ip_win"
pip_allocation         = "Dynamic"
vm_nic                 = "win_vm_nic"
ip_configuration       = "ip_config"
vm_name                = "win-terra-vm"
vm_size                = "Standard_B2s"
vm_username            = "" ## Fetched from KV.
vm_password            = "" ## Fetched from KV.
vm_image_publisher     = "MicrosoftWindowsServer"
vm_image_offer         = "WindowsServer"
vm_image_sku           = "2019-Datacenter"
vm_image_version       = "latest"
vm_os_disk_strg_type   = "Standard_LRS"
vm_os_disk_caching     = "ReadWrite"
