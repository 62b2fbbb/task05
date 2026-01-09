module "resource_groups" {
  source   = "./modules/resource_group"
  for_each = var.resource_groups
  name     = each.value.name
  location = each.value.location
}

module "tm" {
  source              = "./modules/traffic_manager"
  name                = var.tm.name
  routing_method      = var.tm.routing_method
  resource_group_name = module.resource_groups["rg3"].resource_group_name
  tags                = var.tags

 app_endpoints = {
    for key, val in var.app_services : key => {
      name = val.name
      id   = module.app_service[key].as_id
    }
  }
}

module "app_service_plan" {
  source   = "./modules/app_service_plan"
  for_each = var.asp

  asp_name     = each.value.name
  asp_sku      = each.value.sku
  asp_capacity = each.value.capacity

  resource_group_name     = module.resource_groups[each.value.linked_rg].resource_group_name
  resource_group_location = module.resource_groups[each.value.linked_rg].resource_group_location
}

module "app_service" {
  source       = "./modules/app_service"
  for_each     = var.app_services
  as_name      = each.value.name

  vert_ip = var.vert_ip

  rg_name = module.resource_groups[each.value.linked_rg].resource_group_name
  rg_loc  = module.resource_groups[each.value.linked_rg].resource_group_location

  service_plan_id = module.app_service_plan[each.value.linked_asp].asp_id

  allow_ip_rule = var.allow_ip_rule
  allow_tm_rule = var.allow_tm_rule
}





#resource "azurerm_traffic_manager_azure_endpoint" "tmae" {
#  for_each = var.app_services
#
#  name               = "endpoint-${each.value.name}"
#  profile_id         = module.tm.tm_id
#  target_resource_id = module.app_service[each.key].as_id
#  weight             = 100
#s}