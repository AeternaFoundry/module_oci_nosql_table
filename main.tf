resource "oci_nosql_table" "nosql_tables" {
  for_each = var.nosql_tables

  compartment_id      = each.value.compartment_id
  ddl_statement       = each.value.ddl_statement
  name                = each.value.name
  defined_tags        = each.value.defined_tags
  freeform_tags       = each.value.freeform_tags
  is_auto_reclaimable = each.value.is_auto_reclaimable

  dynamic "table_limits" {
    for_each = each.value.table_limits != null ? [each.value.table_limits] : []
    content {
      capacity_mode      = table_limits.value.capacity_mode
      max_read_units     = table_limits.value.max_read_units
      max_storage_in_gbs = table_limits.value.max_storage_in_gbs
      max_write_units    = table_limits.value.max_write_units
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

