variable "name" {
  type = string
}

variable "compartment" {
  type    = string
  default = "default"
}

variable "cidr" {
  type = string
}

variable "networks" {
  type = list(string)
}
