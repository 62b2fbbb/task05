variable "resource_groups" {
  description = "A map of objects defining the Resource Groups to be created, including names and Azure regions."
  type = map(object({
    name     = string
    location = string
  }))
}

variable "asp" {
  description = "Configuration map for App Service Plans, including SKU, capacity (worker count), and linkage to Resource Groups."
  type = map(object({
    name       = string
    sku        = string
    capacity   = number
    linked_rg  = string
    linked_asp = string
  }))
}

variable "app_services" {
  description = "Configuration map for App Services (Web Apps), including naming and linkage to specific Resource Groups and Service Plans."
  type = map(object({
    name       = string
    linked_rg  = string
    linked_asp = string
  }))
}

variable "tm" {
  description = "Configuration object for the Traffic Manager Profile, including its name and routing method (e.g., Performance)."
  type = object({
    name           = string
    routing_method = string
  })
}

variable "student_email" {
  description = "The email address of the student/creator, used for resource tagging."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to all resources for identification and cost management."
  type        = map(string)
}

variable "vert_ip" {
  description = "The IP address of the verification agent that must be allowed access to the App Services."
  type        = string
}

variable "allow_ip_rule" {
  description = "The name of the firewall rule that allows the verification agent IP."
  type        = string
}

variable "allow_tm_rule" {
  description = "The name of the firewall rule that allows Traffic Manager health probes."
  type        = string
}