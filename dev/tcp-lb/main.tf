resource "google_compute_forwarding_rule" "default" {
  name   = "website-forwarding-rule"
  project = var.project_id
  region = "us-central1"
  load_balancing_scheme = "EXTERNAL"
  ip_protocol = "TCP"
  target = google_compute_target_pool.default.self_link
  port_range = 80 
  #all_ports             = true
  #network               = "my-terraform-pvc"
  #subnetwork            = "private-subnet-uscentral1"
  
}

resource "google_compute_target_pool" "default" {
  name = "instance-pool"
  project = var.project_id
  region = "us-central1"
  session_affinity = "NONE"
  instances = [
    "us-central1-a/backend-app-01	",
    "us-central1-b/backend-app-02",
    "us-central1-c/backend-app-03",
  ]

  health_checks = [
    google_compute_http_health_check.default.name,
  ]
}

resource "google_compute_http_health_check" "default" {
  name               = "default"
  project = var.project_id
  request_path       = "/"
  check_interval_sec = 1
  timeout_sec        = 1
}