resource "azurerm_storage_account" "sa" {
  name                     = "${var.owner}sa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_kind             = "BlobStorage"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = false
  tags = {
    "Name" = "${var.owner}-sa"
  }
}
