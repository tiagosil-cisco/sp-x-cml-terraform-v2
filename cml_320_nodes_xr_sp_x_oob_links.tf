// Links from all XR routers MGMT interface to the OOB unmanaged switch

resource "cml2_link" "oob_links" {
  for_each = { for key, value in local.nodes : key => value if value.nodedefinition == "iosxrv9000" || value.nodedefinition == "cat8000v" }
  lab_id   = cml2_lab.lab.id
  node_a   = cml2_node.nodes[each.key].id
  node_b   = cml2_node.L2_OOB_EXT_CON.id
  slot_a   = each.value.cml_mgmt_interface
}