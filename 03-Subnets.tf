#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

#################################################### Public Subnet #####################################################################
resource "google_compute_subnetwork" "sisko_public" {
  name          = "captain-sisko-subnet"
  ip_cidr_range = "10.8.0.0/24"
  network       = google_compute_network.ds9_vpc.name
  project       = "jody65"
  region        = "us-central1"

  secondary_ip_range {
    range_name    = "jake"
    ip_cidr_range = "10.8.1.0/24"
  }

  secondary_ip_range {
    range_name    = "joseph"
    ip_cidr_range = "10.8.2.0/24"
  }
}

#################################################### Private Subnet ####################################################################
resource "google_compute_subnetwork" "kira_private" {
  name                     = "major-kira-subnet"
  ip_cidr_range            = "10.80.0.0/24"
  network                  = google_compute_network.ds9_vpc.name
  project                  = "jody65"
  region                   = "us-central1"
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "bareil"
    ip_cidr_range = "10.80.1.0/24"
  }

  secondary_ip_range {
    range_name    = "odo"
    ip_cidr_range = "10.80.2.0/24"
  }
}
