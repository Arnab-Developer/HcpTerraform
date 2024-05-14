resource "azurerm_resource_group" "static_app_1" {
  name     = "${var.scope_name}-group"
  location = var.location
}