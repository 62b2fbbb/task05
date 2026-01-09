output "traffic_manager_fqdn" {
  value       = module.tm.fqdn
  description = "The global public DNS name for accessing the application via Traffic Manager."
}