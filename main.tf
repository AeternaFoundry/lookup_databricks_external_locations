data "databricks_external_locations" "external_locations_lookup" {
  for_each = var.external_locations_lookup

  names = each.value.names

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

