# This will be used to add a VM to Azure. Not free, but good practice! 
# This will also contain variables for use with vnet and other items. 

# Set locals, this will be for tagging
locals {
  location = "useast"
  commonTags = {
    createdby = "me"
    tier = "production"
  }
}

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
  name     = "addVMTest"
  location = "eastus"
  tags = locals.commonTags
}