
variable "project_id" {
    type = "string"
    #default = "gcp-learning-283803"

}
variable "vpc_name" {
    type = "string"
    #default = "my-terraform-pvc"
}

variable "router_name" {
    type = "string"
    default = "my-test-router"
}
variable "region" {
    type = "string"
    default = "us-central1"
}

variable "nat_name" {
    type = "string"
    #default = "my-test-nat"
}

variable "depends_on_modules" {
    type = list
    default = []
}
