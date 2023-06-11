# --- networking/variables.tf ----

# azure region
variable "location" {
  type        = string
  description = "Azure region for the resource group"
  default     = "north europe"
}

variable "resource_group_name" {}