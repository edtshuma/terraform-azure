# --- root/outputs.tf ----

output "resource_group_id" {
    value = module.networking.resource_group_id
}

output "vnet_id" {
    value = module.networking.vnet_id
}