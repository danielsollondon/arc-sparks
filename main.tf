# Configure the Azure provider

provider "azurerm" {
  features {}
}

resource "random_pet" "prefix" {}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.region 

}
