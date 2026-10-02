output "vnet_id" {
    value = module.vnet.vnet_id
}

output "subnet_ids" {
    value = module.vnet.subnet_ids
}

output "vm_id" {
    value = module.vm.instance_id
}

output "public_ip" {
    value = module.vm.public_ip
}