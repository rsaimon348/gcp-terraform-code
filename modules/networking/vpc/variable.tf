
variable "project_id" {
    description = "Project ID under which resourcess to be created"
    type = "string"
    #default = "gcp-learning-283803"

}
variable "vpc_name" {
    type = "string"
    #default = "dev-vpc"
}
variable "routing_mode" {
    type = "string"
    #default = "GLOBAL"
}

variable "auto_create_subnetworks" {
    type = bool
    #default = false
}
