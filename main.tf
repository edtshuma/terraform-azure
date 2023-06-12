# --- root/main.tf ---

module "networking" {
    source = "./networking"
    resource_group_name = var.resource_group_name
    vnet_address_space = ["10.0.0.0/16"]
    vnet_name =  "labs-vnet"
}