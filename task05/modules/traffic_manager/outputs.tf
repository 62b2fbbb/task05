output "tm_id" {
  value       = azurerm_traffic_manager_profile.tm.id
  description = "The resource ID of the Traffic Manager Profile."
}

output "fqdn" {
  value       = azurerm_traffic_manager_profile.tm.fqdn
  description = "The Fully Qualified Domain Name (FQDN) of the Traffic Manager profile."
}