output "dns_managed_zones_lookup_id" {
  description = "Map of id values across all dns_managed_zones_lookup, keyed the same as var.dns_managed_zones_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_dns_managed_zones.dns_managed_zones_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_managed_zones_lookup_managed_zones" {
  description = "Map of managed_zones values across all dns_managed_zones_lookup, keyed the same as var.dns_managed_zones_lookup except keys with no managed_zones are omitted"
  value       = { for k, v in data.google_dns_managed_zones.dns_managed_zones_lookup : k => v.managed_zones if v.managed_zones != null && length(v.managed_zones) > 0 }
}
output "dns_managed_zones_lookup_project" {
  description = "Map of project values across all dns_managed_zones_lookup, keyed the same as var.dns_managed_zones_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_dns_managed_zones.dns_managed_zones_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}

