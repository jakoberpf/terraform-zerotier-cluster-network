output "network_ids" {
  value = [ for i in module.networks : i.network_id ]
}
