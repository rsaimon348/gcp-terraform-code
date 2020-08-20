
variable "db-password" {
    type = "string"
}

variable "project_id" {
    description = "Project ID under which resourcess to be created"
    type = "string"
    default = "gcp-learning-283803"
}
variable "vpc_name" {
    description = "Provide a meaning full name of the vpc"
    type = "string"
    default = "dev-vpc"
}
variable "region" {
    type = "string"
    default = "us-central1"
}
