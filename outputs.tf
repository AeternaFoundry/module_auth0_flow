output "flows_id" {
  description = "Map of id values across all flows, keyed the same as var.flows except keys with no id are omitted"
  value       = { for k, v in auth0_flow.flows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "flows_actions" {
  description = "Map of actions values across all flows, keyed the same as var.flows except keys with no actions are omitted"
  value       = { for k, v in auth0_flow.flows : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "flows_name" {
  description = "Map of name values across all flows, keyed the same as var.flows except keys with no name are omitted"
  value       = { for k, v in auth0_flow.flows : k => v.name if v.name != null && length(v.name) > 0 }
}

