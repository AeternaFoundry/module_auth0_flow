variable "flows" {
  description = <<EOT
Map of flows, attributes below
Required:
    - name
Optional:
    - actions
EOT

  type = map(object({
    name    = string
    actions = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.flows : (
        v.actions == null || (can(jsondecode(v.actions)))
      )
    ])
    error_message = "must be valid JSON"
  }
}

