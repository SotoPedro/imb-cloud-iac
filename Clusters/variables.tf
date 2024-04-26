variable "ibmcloud_api_key" {
  description = "Api key to acces to cloud"
  type = string
}

variable "tf_cluster_names" {
    description = "Names for each cluster"
    type = list(string)
}

variable "cluster_datacenter" {
    type = string
}

variable "machine_type" {
  type = string
}

variable "hw" {
  type = string
}

variable "kb_version" {
  type = list(string)
}

variable "vlan_ids" {
  type = set(string)
}

