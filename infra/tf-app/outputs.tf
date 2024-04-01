output "resource_group_name" {
  value = azurerm_resource_group.rg.name
  description = "The resource group"
}

output "storage_account_name" {
  value = azurerm_storage_account.sa.name
  description = "The storage account used to store the tfstate file"
}

output "container_name" {
  value = azurerm_storage_container.sc.name
  description = "The container used to store the tfstate file"
}

output "arm_access_key" {
  value = azurerm_storage_account.sa.primary_access_key
  sensitive = true
  description = "The primary access key for the storage account"
}
