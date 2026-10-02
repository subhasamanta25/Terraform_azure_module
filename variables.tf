variable "resource_group_name" {
  type    = string
  default = "SubhaVM_group"
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "vnet_name" {
  type    = string
  default = "devops-vnet"
}

variable "vnet_address_space" {
  type = list(string)

  default = [
    "10.0.0.0/16"
  ]
}

variable "subnet_prefixes" {
  type = list(string)

  default = [
    "10.0.1.0/24"
  ]
}

variable "vm_name" {
  type    = string
  default = "devops-vm"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}
