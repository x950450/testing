resource "azurerm_resource_group" "RG1" {
  name     = "RG11"
  location = "West Europe"
}


resource "azurerm_storage_account" "Storage1" {
  name                     = "Storage11"
  resource_group_name      = "${azurerm_resource_group.RG1.name}"
  location                 = "${azurerm_resource_group.RG1.location}"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

