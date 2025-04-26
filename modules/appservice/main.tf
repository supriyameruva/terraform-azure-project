resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "this" {
  name                = "${var.app_service_name}-plan"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "this" {
  name                = var.app_service_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  app_service_plan_id = azurerm_app_service_plan.this.id
}
