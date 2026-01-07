resource "azurerm_windows_web_app" "app" {
  name                = var.as_name
  resource_group_name = var.rg_name
  location            = var.rg_loc
  service_plan_id = var.service_plan_id
  site_config {
    always_on = false
    application_stack {
        current_stack  = "dotnet"
        dotnet_version = "v6.0"
    }
  }
}