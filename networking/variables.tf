# --- networking/variables.tf ----

# azure region
variable "location" {
  type        = string
  description = "Azure region for the resource group"
  default     = "north europe"
}

variable "resource_group_name" {}

variable "vnet_address_space" {
  type = list
}

variable "vnet_name" {
type = string
}