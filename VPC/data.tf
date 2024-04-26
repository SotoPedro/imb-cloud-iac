data "ibm_is_image" "centos" {
    name = "ibm-centos-7-6-minimal-amd64-1"
}

data "ibm_is_ssh_key" "ssh_key_id" {
    name = var.ssh_key
}