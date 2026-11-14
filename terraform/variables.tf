variable "region" {
  type    = string
  default = "ap-southeast-2"
}

variable "name_prefix" {
  type    = string
  default = "tf-lab"
}

variable "my_ip_cidr" {
  type        = string
  description = "Your public IPv4 in CIDR form, for example 203.0.113.7/32"

  validation {
    condition     = can(cidrnetmask(var.my_ip_cidr))
    error_message = "Use CIDR form such as 203.0.113.7/32."
  }
}

variable "enable_compute" {
  type    = bool
  default = false
}