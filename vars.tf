variable "env_id" {
  description = "env ID"
  type        = string
  default     = "qa1"
}

variable "tags" {
  type = map(string)
  default = {
    "Owner"      = "sdrv"
    "CostCenter" = "8904"
  }
}

variable "location" {
  description = "specific region"
  type        = string
  default     = "westus2" #West US
}

variable "vnet_cidr" {
  description = "vnet CIDR"
  type        = string
  default     = "10.110.0.0/16"
}

variable "azureuser_password" {
  default = "Piis-tri1415"
}

variable "vms" {
  description = "The map of VMs properties"
  type        = map(any)
  default = {
    vm1 = {
      size                 = "Standard_F2"
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
      publisher            = "MicrosoftWindowsServer"
      offer                = "WindowsServer"
      sku                  = "2016-Datacenter"
      version              = "latest"
      zone                 = "1"
    }
    vm2 = {
      size                 = "Standard_F2"
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
      publisher            = "MicrosoftWindowsServer"
      offer                = "WindowsServer"
      sku                  = "2016-Datacenter"
      version              = "latest"
      zone                 = "2"
    }
  }
}
