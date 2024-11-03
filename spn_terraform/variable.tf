variable "app_name" {
  description = "The name of the Azure AD Application"
  type        = string
}

variable "client_secret" {
  description = "The client secret for the Azure AD Service Principal"
  type        = string
}

variable "password_end_date" {
  description = "The end date for the service principal password"
  type        = string
}
