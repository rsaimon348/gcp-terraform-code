
resource "google_compute_network" "create_vpc" {
  project = var.project_id
  name = var.vpc_name
  auto_create_subnetworks= var.auto_create_subnetworks
  routing_mode = var.routing_mode
}




