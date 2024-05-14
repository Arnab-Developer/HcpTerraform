resource "azurerm_storage_account" "website" {
  name                     = "${local.plain_scope_name}websitest"
  account_tier             = var.storage.type
  account_replication_type = var.storage.replication_type
  resource_group_name      = azurerm_resource_group.static_app_1.name
  location                 = azurerm_resource_group.static_app_1.location

  static_website {
    index_document     = "index.html"
    error_404_document = "error.html"
  }
}

resource "azurerm_storage_blob" "home_page" {
  name                   = "index.html"
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  storage_account_name   = azurerm_storage_account.website.name
  source                 = var.storage.home_page
}

resource "azurerm_storage_blob" "error_page" {
  name                   = "error.html"
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  storage_account_name   = azurerm_storage_account.website.name
  source                 = var.storage.error_page
}