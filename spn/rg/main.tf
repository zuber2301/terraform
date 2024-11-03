terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = ">=3.0"
      }
    }
    
}

provider "azurerm" {
    features {}


    # Configure authentication using service principal
    tenant_id = var.tenant_id
    client_id = var.client_id
    client_secret = var.client_secret
    subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "juber" {
    name = var.rg_name
    location = var.location
}