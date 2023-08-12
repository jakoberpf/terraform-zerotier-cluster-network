terraform {
  required_providers {
    zerotier = {
      source = "zerotier/zerotier"
      version = "1.4.2"
    }
  }
}

resource "random_string" "deployment_id" {
  length  = 5
  upper   = false
  lower   = true
  number  = true
  special = false
}