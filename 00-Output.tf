#################################################### VPC Outputs ####################################################################
output "ds9_vpc_name" {
  description = "Starfleets Deep Space 9 Name"
  value       = google_compute_network.ds9_vpc.name
}

output "vpc_self_link" {
  description = "The self link of the VPC"
  value       = google_compute_network.ds9_vpc.self_link
}



#################################################### Instance Outputs ##############################################################
output "jadzia_public_ip" {
  value       = google_compute_instance.jadzia_public.network_interface[0].access_config[0].nat_ip
  description = "Lieutenant Commander Jazdia Dax's public IP address."
}

