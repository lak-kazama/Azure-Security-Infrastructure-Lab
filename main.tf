# Standard Provider Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# The Resource Group - Your Project Container
resource "azurerm_resource_group" "rg" {
  name     = "Project-2026-RG"
  location = "East US"
  tags = {
    Environment = "Portfolio-Lab"
    Phase       = "1-Networking"
  }
}

# The VNet - Your Virtual Perimeter
resource "azurerm_virtual_network" "vnet" {
  name                = "secure-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}