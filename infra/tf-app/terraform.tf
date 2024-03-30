terraform {
  required_version = "~> 1.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "enca0002-githubactions-rg"
    storage_account_name = "enca0002githubactions"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
  }
}

provider "azurerm" {
  features {}
}