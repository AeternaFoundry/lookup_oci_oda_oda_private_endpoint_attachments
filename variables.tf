variable "oda_oda_private_endpoint_attachments_lookup" {
  description = <<EOT
Map of oda_oda_private_endpoint_attachments_lookup, attributes below
Required:
    - compartment_id
    - oda_private_endpoint_id
Optional:
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id          = string
    oda_private_endpoint_id = string
    state                   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

