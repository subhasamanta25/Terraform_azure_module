terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  resource_provider_registrations = "none"
}

locals {
  vm_sizes = {
    dev     = "Standard_B2ats_v2"
    staging = "Standard_B2ats_v2"
    prod    = "Standard_D2s_v5"
  }
}

module "vnet" {
  source = "./modules/vnet"

  name                = "${terraform.workspace}-web-server"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
  subnet_prefixes     = var.subnet_prefixes
}

module "vm" {
  source = "./modules/vm"

  depends_on = [module.vnet]

  name                = "${terraform.workspace}-web-server"
  location            = var.location
  resource_group_name = var.resource_group_name

  subnet_id = module.vnet.subnet_ids[0]

  vm_size        = local.vm_sizes[terraform.workspace]
  admin_username = var.admin_username
}
