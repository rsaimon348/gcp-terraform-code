module "vpc" {
  source                  = "../modules/networking/vpc"
  project_id              = var.project_id
  vpc_name                = var.vpc_name
  routing_mode            = var.routing_mode
  auto_create_subnetworks = var.auto_create_subnetworks

}
module "subnet" {
  source     = "../modules/networking/subnet"
  project_id = var.project_id
  vpc_name   = module.vpc.vpc_name
  subnets    = var.subnets
}

module "cloud_nat" {
  source             = "../modules/networking/cloud-nat"
  project_id         = var.project_id
  nat_name           = var.nat_name
  vpc_name           = module.vpc.vpc_name
  depends_on_modules = [module.vpc.vpc_name]

}

