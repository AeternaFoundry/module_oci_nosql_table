output "nosql_tables_id" {
  description = "Map of id values across all nosql_tables, keyed the same as var.nosql_tables except keys with no id are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nosql_tables_compartment_id" {
  description = "Map of compartment_id values across all nosql_tables, keyed the same as var.nosql_tables except keys with no compartment_id are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "nosql_tables_ddl_statement" {
  description = "Map of ddl_statement values across all nosql_tables, keyed the same as var.nosql_tables except keys with no ddl_statement are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.ddl_statement if v.ddl_statement != null && length(v.ddl_statement) > 0 }
}
output "nosql_tables_defined_tags" {
  description = "Map of defined_tags values across all nosql_tables, keyed the same as var.nosql_tables except keys with no defined_tags are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "nosql_tables_freeform_tags" {
  description = "Map of freeform_tags values across all nosql_tables, keyed the same as var.nosql_tables except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "nosql_tables_is_auto_reclaimable" {
  description = "Map of is_auto_reclaimable values across all nosql_tables, keyed the same as var.nosql_tables except keys with no is_auto_reclaimable are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.is_auto_reclaimable if v.is_auto_reclaimable != null }
}
output "nosql_tables_is_multi_region" {
  description = "Map of is_multi_region values across all nosql_tables, keyed the same as var.nosql_tables except keys with no is_multi_region are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.is_multi_region if v.is_multi_region != null }
}
output "nosql_tables_lifecycle_details" {
  description = "Map of lifecycle_details values across all nosql_tables, keyed the same as var.nosql_tables except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "nosql_tables_local_replica_initialization_in_percent" {
  description = "Map of local_replica_initialization_in_percent values across all nosql_tables, keyed the same as var.nosql_tables except keys with no local_replica_initialization_in_percent are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.local_replica_initialization_in_percent if v.local_replica_initialization_in_percent != null }
}
output "nosql_tables_name" {
  description = "Map of name values across all nosql_tables, keyed the same as var.nosql_tables except keys with no name are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "nosql_tables_replicas" {
  description = "Map of replicas values across all nosql_tables, keyed the same as var.nosql_tables except keys with no replicas are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.replicas if v.replicas != null && length(v.replicas) > 0 }
}
output "nosql_tables_schema" {
  description = "Map of schema values across all nosql_tables, keyed the same as var.nosql_tables except keys with no schema are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "nosql_tables_schema_state" {
  description = "Map of schema_state values across all nosql_tables, keyed the same as var.nosql_tables except keys with no schema_state are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.schema_state if v.schema_state != null && length(v.schema_state) > 0 }
}
output "nosql_tables_state" {
  description = "Map of state values across all nosql_tables, keyed the same as var.nosql_tables except keys with no state are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.state if v.state != null && length(v.state) > 0 }
}
output "nosql_tables_system_tags" {
  description = "Map of system_tags values across all nosql_tables, keyed the same as var.nosql_tables except keys with no system_tags are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "nosql_tables_table_limits" {
  description = "Map of table_limits values across all nosql_tables, keyed the same as var.nosql_tables except keys with no table_limits are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => one(v.table_limits) if v.table_limits != null && length(v.table_limits) > 0 }
}
output "nosql_tables_time_created" {
  description = "Map of time_created values across all nosql_tables, keyed the same as var.nosql_tables except keys with no time_created are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "nosql_tables_time_of_expiration" {
  description = "Map of time_of_expiration values across all nosql_tables, keyed the same as var.nosql_tables except keys with no time_of_expiration are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.time_of_expiration if v.time_of_expiration != null && length(v.time_of_expiration) > 0 }
}
output "nosql_tables_time_updated" {
  description = "Map of time_updated values across all nosql_tables, keyed the same as var.nosql_tables except keys with no time_updated are omitted"
  value       = { for k, v in oci_nosql_table.nosql_tables : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

