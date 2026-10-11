variable "external_locations_lookup" {
  description = <<EOT
Map of external_locations_lookup, attributes below
Optional:
    - names
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    names = optional(list(string))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

