variable "sub_count" {
  type    = number
  description = "subnet count"
}

variable "sub_az_a_cidr" {
  type    = list(any)
  default = []
  description = "subnet cidrs for all vpc's availabilty zone a"
}

variable "sub_az_b_cidr" {
  type    = list(any)
  default = []
  description = "subnet cidrs for all vpc's availabilty zone b"
}

variable "sub_az_a_name" {
  type    = list(any)
  default = []
  description = "subnet names for all vpc's availabilty zone a"
}

variable "sub_az_b_name" {
  type    = list(any)
  default = []
  description = "subnet names for all vpc's availabilty zone b"
}

variable "vpc_cidr" {
  type    = list(any)
  default = []
}
variable "vpc_name" {
  type    = list(any)
  default = []
}

variable "dns_support" {
  type    = bool
}

variable "dns_hostname" {
  type    = bool
}

variable "tenancy" {
  type    = string
}

variable "classiclink" {
  type    = bool
}

variable "ipv6_address_on_creation" {
  type    = bool
}

variable "ipv6_native" {
  type    = bool
}

variable "enable_dns64" {
  type    = bool
}