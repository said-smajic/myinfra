provider "azurerm" {
  features {}

  alias           = "dev"
  subscription_id = local.azure_secrets["subscription_id_dev"]
  client_id       = local.azure_secrets["client_id"]
  client_secret   = local.azure_secrets["client_secret"]
  tenant_id       = local.azure_secrets["tenant_id"]
}

provider "azurerm" {
  features {}

  subscription_id = local.azure_secrets["subscription_id_prod"]
  client_id       = local.azure_secrets["client_id"]
  client_secret   = local.azure_secrets["client_secret"]
  tenant_id       = local.azure_secrets["tenant_id"]
}

provider "azuread" {
  client_id     = local.azure_secrets["client_id"]
  client_secret = local.azure_secrets["client_secret"]
  tenant_id     = local.azure_secrets["tenant_id"]
}