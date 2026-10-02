module "vnet" {
    source = "./modules/vnet"

    name = var.vnet_name
    location = var.location
    resource_group_name = var.resource_group_name
    address_space = var.vnet_address_space
    subnet_prefixes = var.subnet_prefixes
}

module "vm" {
    source = "./modules/vm"

    name = var.vm_name
    location = var.location
    resource_group_name = var.resource_group_name   


    subnet_id = module.vnet.subnet_ids[0]

    vm_size = var.vm_size
    admin_username = var.admin_username
}