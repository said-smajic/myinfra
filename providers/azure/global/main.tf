terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "VaultHealth"

    workspaces {
      name = "azure_global"
    }
  }
}

locals {
  azure_secrets = {
    subscription_id_dev  = var.azure_subscription_dev
    subscription_id_prod = var.azure_subscription_prod
    client_id            = var.azure_client_id
    client_secret        = var.azure_client_secret
    tenant_id            = var.azure_tenant_id
  }
}