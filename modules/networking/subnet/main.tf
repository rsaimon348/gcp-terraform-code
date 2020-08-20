locals {
  subnets = {
    for i in var.subnets : "${i.subnet_name}" => i
  }
}

resource "google_compute_subnetwork" "create_subnet" {
  project     = var.project_id
  for_each = local.subnets
  name = each.value.subnet_name
  ip_cidr_range =  each.value.subnet_ip
  region        = each.value.subnet_region
  network       = var.vpc_name
  
}


