# Set AzureRM as provider
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

# Create resource group for storage account
resource "azurerm_resource_group" "storageRg" {
    name = "masterStorageGroup"
    location = "eastus"
    tags = {
        environment = Prod
        use = TF-state
    }
}

resource "azurerm_storage_account" "masterStorage" {
  name                     = "Master-Storage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Prod"
    use = "TF-State"
  }
}