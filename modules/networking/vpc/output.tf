output "vpc_name" {
  description = "Name of the VPC created"
  value = google_compute_network.create_vpc.name
}
output "vpc_id" {
  description = "ID of the VPC created"
  value = google_compute_network.create_vpc.id
}
output "vpc_self_link" {
  value = google_compute_network.create_vpc.self_link
}
