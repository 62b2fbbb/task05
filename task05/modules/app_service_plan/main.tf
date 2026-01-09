resource "azurerm_service_plan" "asp" {
  name                = var.asp_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  os_type             = "Windows"
  sku_name            = var.asp_sku
  worker_count        = var.asp_capacity
  tags                = var.tags
}