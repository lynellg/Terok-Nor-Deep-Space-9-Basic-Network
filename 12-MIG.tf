#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_group_manager

# resource "google_compute_instance_group_manager" "ds9_mig" {
#   name               = "ds9-mig"
#   base_instance_name = "ds9-mig-base"
#   zone               = "us-central1-a"

#   version {
#     instance_template = google_compute_instance_template.ds9_mig.self_link_unique
#   }

#   all_instances_config {
#     metadata = {
#       metadata_key = "metadata_value"
#     }
#     labels = {
#       label_key = "label_value"
#     }
#   }

#   target_pools = [google_compute_target_pool.appserver.id]
#   target_size  = 2

#   named_port {
#     name = "customhttp"
#     port = 8888
#   }

#   auto_healing_policies {
#     health_check      = google_compute_health_check.autohealing.id
#     initial_delay_sec = 300
#   }
# }