
variable "project_id" {
  type    = "string"
  default = "gcp-learning-283803"

}
variable "vm_name" {
  type    = list(string)
  default = ["app-01", "app-02", "app-03"]
  #default = ["app-01"]
}

variable "zone" {
  type    = list(string)
  default = ["us-central1-a", "us-central1-b", "us-central1-c"]
  #default = ["us-central1-a"]
}


variable "pub_ssh_location" {
  type    = list(string)
  default = ["/Users/saimon/.ssh/id_rsa1.pub", "/Users/saimon/.ssh/id_rsa2.pub", "/Users/saimon/.ssh/id_rsa3.pub"]
}

variable "region" {
  type    = "string"
  default = "us-central1"
}

variable "vpc_name" {
  description = "Provide a meaning full name of the vpc"
  type        = "string"
  default     = "dev-vpc"
}
variable "subnet_network" {
  type    = "string"
  default = "private-subnet-uscentral1"
}