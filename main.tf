data "google_dns_managed_zones" "dns_managed_zones_lookup" {
  for_each = var.dns_managed_zones_lookup

  project = each.value.project
}

