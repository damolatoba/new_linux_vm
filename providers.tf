terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
    # azuread = {
    #   source  = "hashicorp/azuread"
    # }
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# Providers
# ----------------------------------------------------------------------------------------------------------------------

provider "azurerm" {
  features {}
}
# provider "azuread" {
#   # use_microsoft_graph = true
# }

data "azurerm_subscription" "current" {}

data "azuread_client_config" "current" {}