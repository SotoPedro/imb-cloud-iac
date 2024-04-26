resource "ibm_iam_user_policy" "policy" {
    ibm_id = var.user_id
    roles  = ["Manager"]

    resources {
        service = "container-registry"
        resource = ibm_cr_namespace.cr_namespace.id
        resource_type = "namespace"
        region = var.region
    }
}
