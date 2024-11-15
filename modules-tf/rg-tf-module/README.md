modules/ Directory: Contains separate subdirectories for each Terraform module (resource group, key vault, storage account, SPN, app service).

main.tf: Defines the main resources and configurations.

outputs.tf: Contains output definitions for the module.

variables.tf: Defines input variables for the module.

README.md: Provides documentation for each module, explaining its usage and parameters.

environments/ Directory: Contains separate subdirectories for different environments (dev, staging, prod).

main.tf: References and utilizes the modules to create resources specific to the environment.

providers.tf: Contains provider configuration specific to the environment.

backend.tf: Defines the backend configuration for remote state storage.

variables.tf: Contains variable definitions for the environment.

global/ Directory: Contains global configurations that apply across environments.

versions.tf: Specifies Terraform and provider versions.

providers.tf: Global provider configurations.

backend.tf: Backend configuration shared across environments.