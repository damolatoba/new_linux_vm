resource "azurerm_virtual_network" "vnet" {
  name                	= var.vnet
  resource_group_name 	= azurerm_resource_group.resource_group.name 
  location            	= azurerm_resource_group.resource_group.location
  address_space       	= [var.vnet_cidr]
}
resource "azurerm_subnet" "vm_subnet" {
  name                 	= var.vm_subnet
  virtual_network_name 	= azurerm_virtual_network.vnet.name
  resource_group_name  	= azurerm_resource_group.resource_group.name 
  address_prefixes 	= [var.vm_subnet_cidr]
#   service_endpoints = ["Microsoft.ContainerRegistry"]

#   enforce_private_link_service_network_policies = true
}