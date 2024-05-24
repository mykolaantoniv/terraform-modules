resource "azurerm_databricks_workspace" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  managed_resource_group_id = azurerm_resource_group.databricks_rg.id

  tags = var.tags
}

resource "azurerm_resource_group" "databricks_rg" {
  name     = "${var.name}-rg"
  location = var.location
}
