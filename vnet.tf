resource "azurerm_virtual_network" "vnet" {
  name                = "${var.owner}-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
  tags = {
    "Name" = "${var.owner}-virtual-network"
  }
}

resource "azurerm_subnet" "public" {
  name                 = "${var.owner}-public-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
