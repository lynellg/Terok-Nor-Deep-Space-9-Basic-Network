#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_health_check

# resource "google_compute_health_check" "ds9_mig_hc" {
#   name                = "ds9-mig-hc"
#   check_interval_sec  = 5
#   timeout_sec         = 5
#   healthy_threshold   = 2
#   unhealthy_threshold = 10 # 50 seconds

#   http_health_check {
#     request_path = "/healthz"
#     port         = "8080"
#   }
# }
