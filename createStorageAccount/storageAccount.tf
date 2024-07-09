# To be used to for accessing storage account

output "storageAccountName" {
    value = azurerm_storage_account.masterStorage.name
}
