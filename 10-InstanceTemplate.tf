#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_template

#################################################### Public Template #####################################################################
resource "google_compute_instance_template" "jadzia_public_template" {
  name_prefix  = "jadzia-public-"
  machine_type = "e2-medium"
  region       = "us-central1"

  disk {
    source_image = "debian-cloud/debian-11"
    boot         = true
  }

  network_interface {
    network    = google_compute_network.ds9_vpc.name
    subnetwork = google_compute_subnetwork.sisko_public.name
    access_config {}
  }
  tags = ["teroknor"]

  metadata = {
    startup-script = file("Script.sh")
  }
  lifecycle {
    create_before_destroy = true
  }
}

#################################################### Private Template #####################################################################
resource "google_compute_instance_template" "worf_private_template" {
  name_prefix  = "worf-private-"
  machine_type = "e2-medium"
  region       = "us-central1"

  disk {
    source_image = "debian-cloud/debian-11"
    boot         = true
  }

  network_interface {
    network    = google_compute_network.ds9_vpc.name
    subnetwork = google_compute_subnetwork.kira_private.name
  }
  lifecycle {
    create_before_destroy = true
  }
}