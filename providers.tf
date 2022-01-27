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

  subscription_id = "549cf74a-fcb0-49d2-8a63-968ea8b2b1f8"
  client_id       = "e47b5ea8-eebc-4ee2-89cc-9fc76efdf706"
  client_secret   = "McSGSFVfxq8kZ0EoiAUM-rriXdePx_sS8K"
  tenant_id       = "84cc859e-d165-4b0e-8b05-b47b775371e7"
}

data "azurerm_subscription" "current" {}

data "azuread_client_config" "current" {}
