
resource "azurerm_resource_group" "rg" {
  name     = "${var.owner}-rg"
  location = var.region
  tags = {
    "Name" = "${var.owner}-rg"
  }
}
