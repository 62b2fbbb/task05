variable "name" {
  description = "The name of the Traffic Manager Profile."
  type        = string
}

variable "routing_method" {
  description = "The routing method for the Traffic Manager (e.g., Performance, Priority, Weighted)."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group where the Traffic Manager will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the Traffic Manager resource."
  type        = map(string)
}

variable "app_endpoints" {
  description = "Map containing names and resource IDs of the App Services to be added as endpoints to the Traffic Manager."
  type = map(object({
    name = string
    id   = string
  }))
}