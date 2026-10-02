resource_group_name = "SubhaVM_group"
location            = "Central India"

vnet_name = "devops-vnet"

vnet_address_space = [
  "10.0.0.0/16"
]

subnet_prefixes = [
  "10.0.1.0/24"
]

vm_name        = "devops-vm"
vm_size        = "Standard_B1s"
admin_username = "azureuser"