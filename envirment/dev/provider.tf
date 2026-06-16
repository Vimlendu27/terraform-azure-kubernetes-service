terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "newrg"
    storage_account_name = "sthdhondu"
    container_name       = "stgcont"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "301ef477-2de6-4ead-b1a7-d9b7965277ac"
  features {}
}