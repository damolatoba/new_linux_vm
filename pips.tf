resource "azurerm_public_ip" "vm_pip" {
  name                = var.vm_pip_name
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  allocation_method   = "Static"
  sku = "Standard"
}