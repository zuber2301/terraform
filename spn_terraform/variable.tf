variable "spn_name" {
  type        = string
  description = "Name for the Service Principal"
}

variable "role_assignment_scope" {
  type        = string
  description = "Scope for the role assignment (e.g., subscription or resource group ID)"
}

variable "role_assignment_role" {
  type        = string
  description = "Role to assign to the SPN (e.g., Contributor, Reader)"
}

