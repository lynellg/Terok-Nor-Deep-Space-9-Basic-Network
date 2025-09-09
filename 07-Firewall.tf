#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

#################################################### Port 22 #####################################################################
resource "google_compute_firewall" "starfleet_firewall_22" {
  name        = "starfleet-firewall-22"
  description = "Allow SSH"
  network     = google_compute_network.ds9_vpc.name
  priority    = 1000
  direction   = "INGRESS"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["teroknor"]
}

#################################################### Ports 80, 443, 8080 #####################################################################
resource "google_compute_firewall" "starfleet_firewall_ports" {
  name        = "starfleet-firewall-ports"
  description = "Allow HTTP, HTTPS access to Terok Nor"
  network     = google_compute_network.ds9_vpc.name
  priority    = 1000
  direction   = "INGRESS"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "8080"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["teroknor"]
}


#Protocol "ICMP" - Pings VM, makes sure it is alive and well (for troubleshooting)
#Port 22 - SSH
#Port 80 - The default port for HTTP traffic (websites)
#Port 443 - The default port for HTTPS traffic (secure websites)
#Port 8080 - Often used by developers and apps as a secondary HTTP port (e.g., for APIs, test servers, or internal services).