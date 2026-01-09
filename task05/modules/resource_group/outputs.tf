output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "The unique resource ID of the Resource Group."
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "The name of the Resource Group."
}

output "resource_group_location" {
  value       = azurerm_resource_group.rg.location
  description = "The Azure region where the Resource Group is hosted."
}