resource "cml2_lab" "lab" {
  title       = local.project_title
  description = local.project_description
  notes       = <<-EOT
  # Heading
  - https://github.com/tiagosil-cisco/sp-x-cml-terraform.git
  EOT
}