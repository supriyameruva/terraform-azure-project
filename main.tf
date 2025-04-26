provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

module "app_service" {
  source              = "./modules/appservice"
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_name    = var.app_service_name
}
