//Unmanaged Switch
resource "cml2_node" "L2_OOB_EXT_CON" {
  lab_id         = cml2_lab.lab.id
  hide_links     = true
  label          = "L2_OOB_EXT_CON"
  nodedefinition = "unmanaged_switch"
  tags           = ["oob_mgmt"]
  x              = 300
  y              = -400
}

//External Conn
resource "cml2_node" "EXT_CON" {
  lab_id         = cml2_lab.lab.id
  hide_links     = true
  label          = "OOB_EXT_CON"
  nodedefinition = "external_connector"
  tags           = ["oob_mgmt"]
  x              = 300
  y              = -600
  configuration  = local.ext_conn_bridge
}