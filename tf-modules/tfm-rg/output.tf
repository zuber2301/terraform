output "resource_group_id" {
    value = azurerm_resource_group.juber.id
    description = "ID of the resource group created"
}

output "resource_gropu_name" {
    value = azurerm_resource_group.juber.name
    description = "Name of the RG created"

}