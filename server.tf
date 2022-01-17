resource "azurerm_linux_virtual_machine" "node_name" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  zone = var.vm_zone
  size                = var.vm_size
  disable_password_authentication = false
  admin_username      = "adminuser"
  admin_password = "adminpassword@01"
  network_interface_ids = [
    azurerm_network_interface.vm_nic.id,
  ]

  os_disk {
    name = var.vm_os_disk_name
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
    disk_size_gb = var.disk_size_gb
  }

  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7-LVM"
    version   = "latest"
  }
}