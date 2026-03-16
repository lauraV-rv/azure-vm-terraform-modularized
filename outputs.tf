output "resource_group_name" {
  value       = module.resource_group.name
  description = "Nombre del resource group"
}

output "public_ip" {
  value       = module.network.public_ip
  description = "IP pública de la VM"
}

output "ssh_command" {
  value       = "ssh ${var.admin_username}@${module.network.public_ip}"
  description = "Comando SSH para conectarse a la VM"
}

output "vm_name" {
  value       = module.vm.vm_name
  description = "Nombre de la máquina virtual"
}