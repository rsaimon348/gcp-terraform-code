
resource "google_compute_firewall" "default" {
  name    = "allow-http-port"
  project = var.project_id
  network = var.vpc_name

  # allow {
  #   protocol = "icmp"
  # }

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["app-01","app-02","app-03"]
  source_ranges = ["0.0.0.0/0"]
}