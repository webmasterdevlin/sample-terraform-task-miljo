resource "azurerm_log_analytics_workspace" "log_analytics" {
  resource_group_name = var.rg_name
  location            = var.rg_location
  name                = var.name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
  daily_quota_gb      = var.daily_quota_gb
}
