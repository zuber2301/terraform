# main.tf
module "vnet1" {
  source             = "path/to/vnets"
  resource_group_name = var.vnet1_rg_name
  vnet_name           = var.vnet1_name
  # Add other parameters for VNet 1 module
}

module "vnet2" {
  source             = "path/to/vnets"
  resource_group_name = var.vnet2_rg_name
  vnet_name           = var.vnet2_name
  # Add other parameters for VNet 2 module
}

module "vnet_peering" {
  source         = "./vnet_peering"
  vnet1_rg_name  = module.vnet1.resource_group_name
  vnet2_rg_name  = module.vnet2.resource_group_name
  vnet1_name     = module.vnet1.vnet_name
  vnet2_name     = module.vnet2.vnet_name
}
