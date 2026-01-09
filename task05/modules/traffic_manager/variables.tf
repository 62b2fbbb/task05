variable "name" {
  type = string
}

variable "routing_method" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "app_services" {
  type = map(string)
}

variable "app_endpoints" {
  description = "Map of App Services (IDs and Names)"
  type = map(object({
    name = string
    id   = string
  }))
}