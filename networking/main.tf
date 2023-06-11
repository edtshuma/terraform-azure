

resource "azurerm_resource_group" "labs-rg" {
    name = var.resource_group_name
    location = var.location
}