variable "project_id" {
  description = "Project ID under which resourcess to be created"
  type        = "string"
  #default = "gcp-learning-283803"
}
variable "vpc_name" {
  description = "Provide a meaning full name of the vpc"
  type        = "string"
  default     = "dev-vpc"
}
variable "routing_mode" {
  type    = "string"
  default = "GLOBAL"
}
variable "auto_create_subnetworks" {
  description = "Make it true if you want to create subnet automatically under this vpc"
  type        = bool
  default     = false
}

variable "subnets" {
  type = list(map(string))
  default = [
    {
      subnet_name   = "private-subnet-uscentral1"
      subnet_ip     = "192.168.1.0/28"
      subnet_region = "us-central1"
    },
    {
      subnet_name   = "public-subnet-usewest1"
      subnet_ip     = "192.168.2.0/28"
      subnet_region = "us-west1"
    }

  ]
}

variable "depends_on_modules" {
  description = "List of resources/module this module depends on"
  type        = list
  default     = []

}

variable "router_name" {
  type    = "string"
  default = "my-test-router"
}
variable "region" {
  type    = "string"
  default = "us-central1"
}

variable "nat_name" {
  type    = "string"
  default = "dev-nat-for-private-subnet"
}