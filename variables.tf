variable "prefix" {
  type        = string
  description = "Prefijo para los recursos"
}

variable "location" {
  type        = string
  description = "Región de Azure"
  default     = "eastus2"
}

variable "vm_size" {
  type        = string
  description = "Tamaño de la VM"
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "Usuario administrador de la VM"
}

variable "admin_password" {
  type        = string
  description = "Contraseña del administrador de la VM"
  sensitive   = true
}