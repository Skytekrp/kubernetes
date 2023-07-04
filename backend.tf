terraform {
  backend "azurerm" {
      resource_group_name  = "kopicloud-tstate-rg"
      storage_account_name = "kopicloudtfstate34756"
      container_name       = "tfstate1"
      key                  = "terraform.tfstate"
     }
}
