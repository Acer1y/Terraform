# tf file for adding a resource group. This is from the TerraForm example: https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build
# Executed tf configuration, then ran destroy to delete the added resource. TFState only contained configuration for this resource group.


# Set the provider, AzureRM in this case for managing resources
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
    name = "MyTFtestGroup" 
    location = "eastus2"
}