// Links from all XR routers MGMT interface to the OOB unmanaged switch

resource "cml2_link" "links" {
  for_each = local.filtered_links
  lab_id   = cml2_lab.lab.id
  node_a   = cml2_node.nodes[each.value.router_a].id
  node_b   = cml2_node.nodes[each.value.router_b].id
  slot_a   = each.value.router_a_cml_interface
  slot_b   = each.value.router_b_cml_interface
}