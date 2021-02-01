resource "azurerm_dns_zone" "zone" {
  name = "azure.flamarion.eti.br"
  resource_group_name = azurerm_resource_group.rg.name
  tags = {
    "Name" = "${var.owner}-dns-zone"
  }
}