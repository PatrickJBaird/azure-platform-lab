terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-lab"
    storage_account_name = "stterraform0926"
    container_name       = "tfstate"
    key                  = "terraform-lab.tfstate"
  }
}