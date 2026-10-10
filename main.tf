resource "auth0_flow" "flows" {
  for_each = var.flows

  name    = each.value.name
  actions = each.value.actions
}

