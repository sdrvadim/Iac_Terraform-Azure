terraform {
  required_version = "= 1.0.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.65.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "1b635bda-d476-473d-a746-ccfe94105ef4"
  tenant_id       = "463f1469-6121-4613-9628-13046e7d3a6f"

  features {}
}
