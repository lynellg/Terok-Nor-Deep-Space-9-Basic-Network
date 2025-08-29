#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
resource "google_compute_network" "ds9_vpc" {
  name                    = "terok-nor"
  project                 = "jody65"
  auto_create_subnetworks = false
  description             = "DS9 Main VPC"
  mtu                     = 1460
}
