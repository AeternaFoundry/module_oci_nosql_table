variable "nosql_tables" {
  description = <<EOT
Map of nosql_tables, attributes below
Required:
    - compartment_id
    - ddl_statement
    - name
Optional:
    - defined_tags
    - freeform_tags
    - is_auto_reclaimable
    - table_limits (block):
        - capacity_mode (optional)
        - max_read_units (required)
        - max_storage_in_gbs (required)
        - max_write_units (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id      = string
    ddl_statement       = string
    name                = string
    defined_tags        = optional(map(string))
    freeform_tags       = optional(map(string))
    is_auto_reclaimable = optional(bool)
    table_limits = optional(object({
      capacity_mode      = optional(string)
      max_read_units     = number
      max_storage_in_gbs = number
      max_write_units    = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

