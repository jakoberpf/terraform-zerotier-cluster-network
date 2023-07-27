# Zerotier Cluster Network Module

This module provisions a zerotier cluster network.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_zerotier"></a> [zerotier](#requirement\_zerotier) | 1.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_networks"></a> [networks](#module\_networks) | jakoberpf/base-network/zerotier | 0.0.1 |

## Resources

| Name | Type |
|------|------|
| [random_string.deployment_id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_compartment"></a> [compartment](#input\_compartment) | n/a | `string` | `"default"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_networks"></a> [networks](#input\_networks) | n/a | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_ids"></a> [network\_ids](#output\_network\_ids) | n/a |
<!-- END_TF_DOCS -->