variable "dns_managed_zones_lookup" {
  description = <<EOT
Map of dns_managed_zones_lookup, attributes below
Optional:
    - project
EOT

  type = map(object({
    project = optional(string)
  }))
}

