terraform {
  required_version = ">=1.0"
  backend "azurerm" {
    resource_group_name = "kopicloud-tstate-rg"
    storage_account_name = "kopicloudtfstate34756"
    container_name = "tfstate"
    key = "actions.tfstate"
  }
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

provider "azurerm" {
  features {}
}