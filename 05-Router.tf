#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router

resource "google_compute_router" "federation" {
  name    = "united-federation-of-planets"
  network = google_compute_network.ds9_vpc.id
  region  = "us-central1"
}