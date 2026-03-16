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
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = "${var.prefix}-rg"
  location = var.location
}

module "network" {
  source              = "./modules/network"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "vm" {
  source               = "./modules/vm"
  prefix               = var.prefix
  location             = var.location
  resource_group_name  = module.resource_group.name
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  network_interface_id = module.network.network_interface_id
}