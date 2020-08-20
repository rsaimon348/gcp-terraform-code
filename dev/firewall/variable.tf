variable "project_id" {
  type    = "string"
  default = "gcp-learning-283803"

}
variable "vpc_name" {
  description = "Provide a meaning full name of the vpc"
  type        = "string"
  default     = "dev-vpc"
}