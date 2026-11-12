output "flows_id" {
  description = "Map of id values across all flows, keyed the same as var.flows"
  value       = { for k, v in auth0_flow.flows : k => v.id }
}
output "flows_actions" {
  description = "Map of actions values across all flows, keyed the same as var.flows"
  value       = { for k, v in auth0_flow.flows : k => v.actions }
}
output "flows_name" {
  description = "Map of name values across all flows, keyed the same as var.flows"
  value       = { for k, v in auth0_flow.flows : k => v.name }
}

