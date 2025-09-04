#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_template

# resource "google_compute_instance_template" "instance_template" {
#   name_prefix  = "instance-template-"
#   machine_type = "e2-medium"
#   region       = "us-central1"

#   // boot disk
#   disk {
#     # ...
#   }

#   // networking
#   network_interface {
#     # ...
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
# }

# resource "google_compute_instance_group_manager" "instance_group_manager" {
#   name               = "instance-group-manager"
#   instance_template  = google_compute_instance_template.instance_template.id
#   base_instance_name = "instance-group-manager"
#   zone               = "us-central1-f"
#   target_size        = "1"
# }

# ####### Google Search
# resource "google_compute_instance_template" "default" {
#   name_prefix = "my-instance-template-"
#   machine_type = "e2-medium"
#   project = "your-gcp-project-id"

#   disk {
#     source_image = "debian-cloud/debian-11"
#     disk_size_gb = 20
#     auto_delete = true
#     boot = true
#   }

#   network_interface {
#     network = "default"
#     access_config {
#       // Ephemeral IP
#     }
#   }

#   metadata = {
#     startup-script = <<-EOF
#       #!/bin/bash
#       sudo apt-get update
#       sudo apt-get install -y apache2
#       sudo systemctl start apache2
#       sudo systemctl enable apache2
#     EOF
#   }

#   service_account {
#     scopes = ["cloud-platform"]
#   }

#   tags = ["web-server"]
# }