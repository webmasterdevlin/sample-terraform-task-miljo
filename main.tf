resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "random_string" "name" {
  length  = 8
  special = false
  number  = true
  lower   = false
  upper   = false
}

module "log_analytics_workspace" {
  source = "./platform/production"

  rg_name           = azurerm_resource_group.rg.name
  rg_location       = azurerm_resource_group.rg.location
  name              = join("", ["p-mgt", random_string.name.result, "-log"])
  sku               = var.log_analytics_workspace_sku
  retention_in_days = var.log_analytics_workspace_retention_in_days
  daily_quota_gb    = var.log_analytics_workspace_daily_quota_gb
}
