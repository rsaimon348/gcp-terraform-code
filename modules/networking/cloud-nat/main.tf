resource "google_compute_router" "cloud_router" {
  name    = var.router_name
  project = var.project_id
  region  = var.region
  network = var.vpc_name
  bgp {
    asn = "64514"
    advertise_mode = "DEFAULT"

  }
  depends_on = [var.depends_on_modules]
}

resource "google_compute_router_nat" "nat" {
  project = var.project_id
  name = var.nat_name
  router  = google_compute_router.cloud_router.name
  region = google_compute_router.cloud_router.region
  nat_ip_allocate_option = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

}
