terraform {
  required_version = "~> 1.5"

}


resource "azurerm_resource_group" "rg" {
  name     = "enca0002-githubactions-rg"
  location = "Canada Central"
}

resource "azurerm_resource_group" "a12_rg" {
  name     = "enca0002-a12-rg"
  location = "Canada Central"
}

resource "azurerm_storage_account" "sa" {
  name                     = "enca0002githubactions"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_container" "sc" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}



