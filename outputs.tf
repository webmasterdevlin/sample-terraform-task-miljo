output "rg_name" {
  value       = azurerm_resource_group.rg.name
  description = "resource group name"
}

output "rg_location" {
  value       = azurerm_resource_group.rg.location
  description = "resource group location"
}

# ex. p-mgt63884912-log
output "log_analytics_workspace_name" {
  value       = module.log_analytics_workspace.output_name
  description = "log analytics workspace name"
}
