#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

#################################################### Port 22 #####################################################################
resource "google_compute_firewall" "starfleet_firewall_22" {
  name        = "starfleet-firewall-22"
  description = "Allow Ping, SSH, and HTTP access to Terok Nor"
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

  source_ranges = ["10.8.0.0/24"]
  target_tags   = ["teroknor"]
}

#################################################### Ports 80, 443, 8080 #####################################################################
resource "google_compute_firewall" "starfleet_firewall_ports" {
  name        = "starfleet-firewall-ports"
  description = "Allow Ping, SSH, and HTTP access to Terok Nor"
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
#Port 80 - HTTP
#Port 443 - HTTPS
#Port 8080 - HTTP Alternate/App testing