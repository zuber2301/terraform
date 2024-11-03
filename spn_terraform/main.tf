# Azure AD Provider for SPN creation
provider "azuread" {
  tenant_id = data.azurerm_client_config.current.tenant_id
}

# Azure RM Provider for role assignment
provider "azurerm" {
  features {}
}

# Get the current client configuration
data "azurerm_client_config" "current" {}

# Create a Service Principal
resource "azuread_application" "spn_app" {
  display_name = var.spn_name
}

resource "azuread_service_principal" "spn" {
  application_id = azuread_application.spn_app.application_id
}

# Create a password (client secret) for the SPN
resource "azuread_application_password" "spn_password" {
  application_object_id = azuread_application.spn_app.object_id
  display_name          = "spn-secret"
  end_date_relative     = "8760h" # 1 year from creation
}

# Assign a role to the Service Principal
resource "azurerm_role_assignment" "spn_role_assignment" {
  principal_id   = azuread_service_principal.spn.object_id
  role_definition_name = var.role_assignment_role
  scope          = var.role_assignment_scope
}

