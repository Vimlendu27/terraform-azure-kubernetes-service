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
subscription_id = "7d7e4c65-1bfb-4455-b143-d0d76737869b"
  }
}

provider "azurerm" {
  subscription_id = "7d7e4c65-1bfb-4455-b143-d0d76737869b"
  features {}
}
