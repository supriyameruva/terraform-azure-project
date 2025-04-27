output "default_site_hostname" {
  value = azurerm_app_service.this.default_site_hostname
  description = "The default hostname of the App Service."
}
