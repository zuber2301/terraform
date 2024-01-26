# vnet_peering/variables.tf
variable "source_rg_name" {
  description = "Resource group name where source VNet resides"
}

variable "vnet2_rg_name" {
  description = "Resource group name where target VNet resides"
}

variable "source_vnet_name" {
  description = "Name of of the source VNet"
}

variable "target_vnet_name" {
  description = "Name of the target VNet"
}
