locals {
  project_title       = "The_Bridge"
  project_description = "Topology created using Terraform to represent The Bridge SP"
  ext_conn_bridge     = "bridge1"
  nodes               = jsondecode(file("${path.module}/sp-x-cml-terraform-nodes.json"))
  links               = jsondecode(file("${path.module}/sp-x-interfaces-point-to-points.json"))
  filtered_links = { for key, value in local.links :
    key => value
    if local.nodes[value.router_a].nodedefinition == "iosxrv9000" && local.nodes[value.router_b].nodedefinition == "iosxrv9000"
  }

  sp_x_initial_state = "DEFINED_ON_CORE"

  //Device credentials
  default_xr_username = "admin"
  default_xr_password = "C!sco123"
  default_xe_username = "admin"
  default_xe_password = "C!sco123"
}


variable "cml_username" {}
variable "cml_password" {}
variable "cml_URL" {}


