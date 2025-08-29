#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance

#################################################### DS9 Public Instance #####################################################################
resource "google_compute_instance" "jadzia_public" {
  name         = "lieutenant-commander-jadzia-dax-vm"
  machine_type = "e2-medium"
  project      = "jody65"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.ds9_vpc.name
    subnetwork = google_compute_subnetwork.sisko_public.name
    access_config {}
  }

  tags = ["teroknor"]
}

#################################################### DS9 Public Instance #####################################################################
resource "google_compute_instance" "worf_private" {
  name         = "lieutenant-commander-worf-vm"
  machine_type = "e2-medium"
  project      = "jody65"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.ds9_vpc.name
    subnetwork = google_compute_subnetwork.kira_private.name
  }

  labels = {
    environment = "private"
  }
}