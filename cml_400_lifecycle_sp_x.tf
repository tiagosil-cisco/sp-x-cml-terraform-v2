/*

resource "cml2_lifecycle" "sp-x" {
  for_each = local.nodes
  lab_id   = cml2_lab.lab.id
  elements = [

    cml2_node.nodes[each.key].id
  ]
  staging = {
    stages          = ["oob_mgmt", "p", "pe", "asbr"]
    start_remaining = false
  }

  state = local.sp_x_initial_state
}
*/
 