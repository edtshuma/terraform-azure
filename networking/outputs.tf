# --- networking/outputs.tf ----

output "resource_group_id" {
    value = azurerm_resource_group.labs-rg.name
}

output "vnet_id" {
    value = azurerm_virtual_network.labs-vnet.name
}