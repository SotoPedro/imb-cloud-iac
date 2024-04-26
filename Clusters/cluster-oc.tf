data "ibm_resource_group" "resource_group" {
    name = "default"
}

resource "ibm_container_cluster" "tfcluster" {
    name            = var.tf_cluster_names[1]
    datacenter      = var.cluster_datacenter
    machine_type    = var.machine_type
    hardware        = var.hw
    public_vlan_id  = var.vlan_ids[0]
    private_vlan_id = var.vlan[1]

    kube_version = var.kb_version[1]

    default_pool_size = 3
        
    public_service_endpoint  = "true"
    private_service_endpoint = "true"

    resource_group_id = data.ibm_resource_group.resource_group.id
}