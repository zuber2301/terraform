variable "tenant_id" {
    type = string
    description = "Azure tenant ID"
}

variable "subscription_id" {
    type = string
    description = "Subscription where RG will be created"
}

variable "client_id" {
    type = string
    description = "Azure SPN client IP"
}

variable "client_secret" {
    type = string
    description = "Azure SPN client secret"
}

variable "rg_name" {
    type = string
    description = "Azure Resource Group name"
}

variable "location" {
    type = string
    description = "Azure region for RG"
}

variable "tags" {
    type = map(string)
    description = "A map fo tags to add to the RG"
    default = {}
}