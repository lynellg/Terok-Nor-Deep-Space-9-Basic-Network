#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat

resource "google_compute_router_nat" "starfleet" {
  name                               = "starfleet"
  router                             = google_compute_router.federation.name
  region                             = google_compute_router.federation.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name                    = google_compute_subnetwork.sisko_public.name
    source_ip_ranges_to_nat = ["ALL_IP_RANGES", "LIST_OF_SECONDARY_RANGES"]
  }

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}
