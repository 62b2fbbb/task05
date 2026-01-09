variable "as_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "rg_loc" {
  type = string
}

variable "service_plan_id" {
  type = string
}

variable "vert_ip" {
  type = string
}

variable "allow_ip_rule" {
  type        = string
  description = "Name for the IP allow rule"
}

variable "allow_tm_rule" {
  type        = string
  description = "Name for the Traffic Manager allow rule"
}