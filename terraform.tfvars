resource_group = "vm_rg"
location = "EastUS"

vnet = "vm_vnet"
vnet_cidr = "10.0.0.0/22"

vm_subnet = "vm_subnet"
vm_subnet_cidr = "10.0.0.0/23"

nsg_name = "primary_nsg"
nsg_rule_01 = "nsg_rule_01"

vm_pip_name = "vm_pip"
vm_nic_name = "vm_nic"
vm_nic_ip_config = "config_01"

vm_name = "Damvm01"
vm_zone = "1"
vm_size = "Standard_D8s_v3"
vm_os_disk_name = "Dam_vm_os_disk"
disk_size_gb = 1024