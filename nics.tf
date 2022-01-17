resource "azurerm_network_interface" "vm_nic" {
  name                = var.vm_nic_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  dns_servers = []

  ip_configuration {
    name                          = var.vm_nic_ip_config
    subnet_id                     = azurerm_subnet.vm_subnet.id
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version = "IPv4"
    public_ip_address_id = azurerm_public_ip.vm_pip.id
    primary = true
  }
}