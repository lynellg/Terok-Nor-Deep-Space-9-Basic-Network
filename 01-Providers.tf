#https://registry.terraform.io/providers/hashicorp/google/latest
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.48.0"
    }
  }
}


#https://registry.terraform.io/providers/hashicorp/google/latest
provider "google" {
  credentials = "class65main.json"
  project     = "jody65"
}