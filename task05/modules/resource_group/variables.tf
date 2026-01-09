variable "name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "The Azure region where the Resource Group will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the Traffic Manager resource."
  type        = map(string)
}