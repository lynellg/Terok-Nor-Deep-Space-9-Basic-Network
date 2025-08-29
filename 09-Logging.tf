#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/logging_project_sink

# resource "google_logging_project_sink" "terok_nor_nat_logs_error" {
#   name        = "terok-nor-error-logs-sink"
#   description = "Terok Nor NAT Error Logs"
#   destination = "storage.googleapis.com/${google_storage_bucket.terok_nor_nat_logs.name}"
#   filter      = "resource.type=\"nat_gateway\" AND severity=ERROR"

#   # Give sink permission to write to the bucket
#   unique_writer_identity = true
# }


# resource "google_storage_bucket_iam_member" "nat_error_logs_writer" {
#   bucket = google_storage_bucket.ds9_logs.name
#   role   = "roles/storage.objectCreator"
#   member = google_logging_project_sink.nat_error_logs.writer_identity
# }
