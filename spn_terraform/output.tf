output "spn_client_id" {
  description = "The Client ID (Application ID) of the Service Principal"
  value       = azuread_application.spn_app.application_id
}

output "spn_client_secret" {
  description = "The Client Secret (Password) of the Service Principal"
  value       = azuread_application_password.spn_password.value
  sensitive   = true
}

output "spn_tenant_id" {
  description = "The Tenant ID associated with the Service Principal"
  value       = data.azurerm_client_config.current.tenant_id
}

