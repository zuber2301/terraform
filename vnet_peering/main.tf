# Define the VNet peering module ('vnet_peering/main.tf)
# vnet_peering/main.tf
variable "vnet1_rg_name" {
  description = "Resource group name for VNet 1"
}

variable "vnet2_rg_name" {
  description = "Resource group name for VNet 2"
}

variable "vnet1_name" {
  description = "Name of VNet 1"
}

variable "vnet2_name" {
  description = "Name of VNet 2"
}

resource "azurerm_virtual_network_peering" "vnet_peering" {
  name                      = "peering-to-${var.vnet2_name}"
  resource_group_name      = var.vnet1_rg_name
  virtual_network_name      = var.vnet1_name
  remote_virtual_network_id = azurerm_virtual_network.vnet2.id

  allow_virtual_network_access = true
  use_remote_gateways         = false
}
