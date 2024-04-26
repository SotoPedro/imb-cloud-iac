resource "ibm_cloudant_database" "cloudant_database" {
  for_each     = var.cloudant_databases
  instance_crn = ibm_cloudant.test_cloudant_service.crn
  db           = each.value
}