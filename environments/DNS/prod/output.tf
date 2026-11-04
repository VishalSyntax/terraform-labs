output "zone_id" {
  value = module.dns.zone_id
}

output "name_servers" {
  value = module.dns.name_servers
}

output "record_fqdn" {
  value = module.dns.record_fqdn
}
