output "rg_id" {
  value = azurerm_resource_group.rg.id
}

output "name" {
  value = azurerm_resource_group.rg.name
}

output "location" {
  value = azurerm_resource_group.rg.location
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "public_subnet_address" {
  value = azurerm_subnet.public.address_prefixes
}


output "dns_zone_id" {
  value = azurerm_dns_zone.zone.id
}

output "dns_zone_name" {
  value = azurerm_dns_zone.zone.name
}
