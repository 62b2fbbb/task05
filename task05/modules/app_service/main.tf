locals {
  rules = [
    {
      name        = var.allow_ip_rule
      ip          = "${var.vert_ip}/32"
      service_tag = null
      priority    = 100
    },
    {
      name        = var.allow_tm_rule
      ip          = null
      service_tag = "AzureTrafficManager"
      priority    = 200
    }
  ]
}

resource "azurerm_windows_web_app" "app" {
  name                = var.as_name
  resource_group_name = var.rg_name
  location            = var.rg_loc
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = false

    application_stack {
      current_stack  = "dotnet"
      dotnet_version = "v6.0"
    }

    # 2. Використовуємо DYNAMIC BLOCK замість хардкоду
    dynamic "ip_restriction" {
      for_each = local.rules
      content {
        name        = ip_restriction.value.name
        ip_address  = ip_restriction.value.ip
        service_tag = ip_restriction.value.service_tag
        priority    = ip_restriction.value.priority
        action      = "Allow"
      }
    }
  }
}