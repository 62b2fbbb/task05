variable "as_name" {
  description = "The name of the Windows Web App."
  type        = string
}

variable "rg_name" {
  description = "The name of the Resource Group where the Web App will be deployed."
  type        = string
}

variable "rg_loc" {
  description = "The Azure region for the Web App deployment."
  type        = string
}

variable "service_plan_id" {
  description = "The ID of the App Service Plan that will host this Web App."
  type        = string
}

variable "vert_ip" {
  description = "The IP address allowed to access the Web App (Verification Agent)."
  type        = string
}

variable "allow_ip_rule" {
  description = "The name for the IP restriction rule allowing the Verification Agent."
  type        = string
}

variable "allow_tm_rule" {
  description = "The name for the IP restriction rule allowing Azure Traffic Manager traffic."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the Traffic Manager resource."
  type        = map(string)
}