variable "namespace_name" {
    description = "The name of the corresponding namespace"
    type = string
}

variable "user_id" {
 description = "The current user email (ibm id)"
  type = string
}
variable "region" {
  description = "The region to be used"
  type = string
  default = "us-south"
}

variable "ibmcloud_api_key" {
    description = "Api key generated to access to cloud"
    type = string
}