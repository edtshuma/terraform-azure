# --- networking/main.tf ----

locals {
    common_tags = {
  Environment = "Dev"
  CreatedBy = "Terraform"
  Project = "Labs"
    }
}

resource "azurerm_resource_group" "labs-rg" {
    name = var.resource_group_name
    location = var.location

    tags = local.common_tags
}

resource   "azurerm_virtual_network"   "labs-vnet"   {
  name   =   var.vnet_name
  address_space   =   var.vnet_address_space
  location   =   azurerm_resource_group.labs-rg.location
  resource_group_name   =   azurerm_resource_group.labs-rg.name

  tags = local.common_tags
}