output "service_principal_id" {
  value = azurerm_ad_service_principal.example.id
}

output "client_secret" {
  value = azurerm_ad_service_principal_password.example.value
}

output "client_id" {
  value = azurerm_ad_application.example.application_id
}
