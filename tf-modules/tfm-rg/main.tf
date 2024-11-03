resource "azuregm_resource_group" "juber" {
  name = var.rg_name
  location = var.location
  tags = var.tags
}