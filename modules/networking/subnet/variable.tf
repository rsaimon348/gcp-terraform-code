
variable "project_id" {
    type = "string"
    #default = "gcp-learning-283803"

}
variable "vpc_name" {
    description = "Name of the VPC under which subnetworks will be created"
    type = "string"
    #default = "my-terraform-pvc"
}

variable "subnets" {
    type = list (map(string))
    # default = [
    #     {
    #         subnet_name           = "private-subnet-uscentral1"
    #         subnet_ip             = "192.168.1.0/28"
    #         subnet_region         = "us-central1"
    #     },
    #     {
    #         subnet_name           = "public-subnet-usewest1"
    #         subnet_ip             = "192.168.2.0/28"
    #         subnet_region         = "us-west1"
    #     }

    # ]
}


