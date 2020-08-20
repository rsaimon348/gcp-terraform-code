
resource "google_compute_global_address" "private_ip_address" {
  provider = google-beta
  project = var.project_id

  name          = "private-ip-address"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  #network       = google_compute_network.private_network.id
  network       = "projects/gcp-learning-283803/global/networks/${var.vpc_name}"
}

resource "google_service_networking_connection" "private_vpc_connection" {
  provider = google-beta

  #network                 = google_compute_network.private_network.id
  network                 = "projects/gcp-learning-283803/global/networks/${var.vpc_name}"
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
}

resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_sql_database_instance" "instance" {
  provider = google-beta
  project = var.project_id

  name   = "private-instance-${random_id.db_name_suffix.hex}"
  region = "us-central1"

  depends_on = [google_service_networking_connection.private_vpc_connection]

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled    = false
      #private_network = google_compute_network.private_network.id
      private_network = "projects/gcp-learning-283803/global/networks/${var.vpc_name}"
    }
  }
}

resource "google_sql_user" "default" {
  name       = "root"
  project    = var.project_id
  instance   = google_sql_database_instance.instance.name
  host       = "%"
  password   = var.db-password
  #depends_on = [null_resource.module_depends_on, google_sql_database_instance.instance]
  depends_on = [google_sql_database_instance.instance]
}

provider "google-beta" {
  region = "us-central1"
  zone   = "us-central1-a"
}

