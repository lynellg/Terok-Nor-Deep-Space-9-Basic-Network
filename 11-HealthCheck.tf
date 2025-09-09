#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_health_check

resource "google_compute_health_check" "ds9_mig_hc" {
  name                = "ds9-mig-hc"
  check_interval_sec  = 30
  timeout_sec         = 15
  healthy_threshold   = 2
  unhealthy_threshold = 2

  http_health_check {
    port               = "8080"
    request_path       = "/healthz"
    host               = "0.0.0.0"
    proxy_header       = "NONE"
    response           = "I AM HEALTHY"
  }
  log_config {
    enable = true
  }
}

