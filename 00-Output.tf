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
####### External IP ########
output "jadzia_public_ip" {
  description = "Lieutenant Commander Jazdia Dax's public IP address"
  value       = google_compute_instance.jadzia_public.network_interface[0].access_config[0].nat_ip
}

####### Internal IP ########
output "jadzia_internal_ip" {
  description = "Lieutenant Commander Jazdia Dax's internal IP address"
  value       = google_compute_instance.jadzia_public.network_interface[0].network_ip
}
