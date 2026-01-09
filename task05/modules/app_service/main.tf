resource "azurerm_windows_web_app" "app" {
  name                = var.as_name
  resource_group_name = var.rg_name
  location            = var.rg_loc
  service_plan_id     = var.service_plan_id



  site_config {
    ip_restriction {
      name       = var.allow_ip_rule
      ip_address = "${var.vert_ip}/32"
      action     = "Allow"
      priority   = 100
    }

    ip_restriction {
      name        = var.allow_tm_rule
      service_tag = "AzureTrafficManager"
      action      = "Allow"
      priority    = 200
    }


    always_on = false
    application_stack {
      current_stack  = "dotnet"
      dotnet_version = "v6.0"
    }
  }

}