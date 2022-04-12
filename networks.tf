locals {
  cidr_mask   = split("/", var.cidr)[1]
  cidr_split  = split(".", var.cidr)
  cidr_major  = trimsuffix(local.cidr_split[2], "0")
  cidr_prefix = join(".", [local.cidr_split[0], local.cidr_split[1], local.cidr_major])
}

module "networks" {
  source  = "jakoberpf/base-network/zerotier"
  version = "0.0.1"

  for_each = toset(var.networks)

  name = "${var.name}-${each.value}-${random_string.deployment_id.result}"
  cidr = join("", [local.cidr_prefix, index(var.networks, each.value)]) # TODO make "XXX.XXX.XXX" to "XXX.XXX.XXX.XXX/YY"
}
