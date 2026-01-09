variable "asp_name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "asp_sku" {
  description = "The SKU (tier and size) of the App Service Plan (e.g., S1, F1)."
  type        = string
}

variable "asp_capacity" {
  description = "The number of workers (instances) for the App Service Plan."
  type        = number
}

variable "resource_group_name" {
  description = "The name of the Resource Group where the App Service Plan will be created."
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region where the App Service Plan will be hosted."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the Traffic Manager resource."
  type        = map(string)
}