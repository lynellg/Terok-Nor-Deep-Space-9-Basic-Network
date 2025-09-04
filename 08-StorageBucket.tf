#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket

#################################################### DS9 General Network Storage #######################################################
resource "google_storage_bucket" "ds9_general_network_storage" {
  name                        = "ds9-general-network-storage"
  location                    = "US"
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = true

  public_access_prevention = "enforced"
}

#################################################### Terok Nor Classified NAT Error Logs ################################################
# resource "google_storage_bucket" "terok_nor_nat_logs" {
#   name                        = "terok-nor-nat-logs"
#   location                    = "US"
#   storage_class               = "STANDARD"
#   force_destroy               = true
#   uniform_bucket_level_access = false

#   versioning {
#     enabled = true
#   }

#   public_access_prevention = "enforced"
# }

