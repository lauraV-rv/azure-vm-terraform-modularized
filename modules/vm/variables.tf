variable "prefix" {
  type        = string
  description = "Prefijo para los recursos"
}

variable "location" {
  type        = string
  description = "Región"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}

variable "vm_size" {
  type        = string
  description = "Tamaño de la VM"
}

variable "admin_username" {
  type        = string
  description = "Usuario administrador"
}

variable "admin_password" {
  type        = string
  description = "Contraseña del administrador"
  sensitive   = true
}

variable "network_interface_id" {
  type        = string
  description = "ID de la NIC"
}