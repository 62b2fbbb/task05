variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "asp" {
  type = map(object({
    name       = string
    sku        = string
    capacity   = number
    linked_rg  = string
    linked_asp = string
  }))
}

variable "app_services" {
  type = map(object({
    name       = string
    linked_rg  = string
    linked_asp = string
  }))
}

variable "tm" {
  type = object({
    name           = string
    routing_method = string
  })
}

variable "student_email" { type = string }
variable "tags" { type = map(string) }

