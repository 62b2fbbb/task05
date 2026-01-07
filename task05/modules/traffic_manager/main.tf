resource "azurerm_traffic_manager_profile" "tm" {
  name = var.name
  resource_group_name = var.resource_group_name
  traffic_routing_method = var.routing_method


dns_config {
    relative_name = var.name 
    ttl           = 100       
}

monitor_config {
    protocol                     = "HTTP"
    port                         = 80
    path                         = "/"
    interval_in_seconds          = 30
    timeout_in_seconds           = 9
    tolerated_number_of_failures = 3
  }
  tags = var.tags
}


