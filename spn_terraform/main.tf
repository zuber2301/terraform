provider "azurerm" {
  features {}
}

resource "azurerm_ad_application" "example" {
  name = var.app_name
}

resource "azurerm_ad_service_principal" "example" {
  application_id = azurerm_ad_application.example.application_id
}

resource "azurerm_ad_service_principal_password" "example" {
  service_principal_id = azurerm_ad_service_principal.example.id
  value                = var.client_secret
  end_date             = var.password_end_date
}

output "service_principal_id" {
  value = azurerm_ad_service_principal.example.id
}

output "client_secret" {
  value = azurerm_ad_service_principal_password.example.value
}

output "client_id" {
  value = azurerm_ad_application.example.application_id
}
