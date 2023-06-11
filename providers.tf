# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  //no need to explicitly define these vars when using ENV VARIABLES
  # subscription_id = var.TF_ARM_SUBSCRIPTION_ID
  # client_id       = var.TF_ARM_CLIENT_ID
  # client_secret   = var.TF_ARM_CLIENT_SECRET
  # tenant_id       = var.TF_ARM_TENANT_ID
}