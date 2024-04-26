resource "ibm_cloudant" "test_cloudant_service" {
  name     = "cloudant-test-service"
  location = "us-south"
  plan     = "lite"

  legacy_credentials  = true
  include_data_events = false
  capacity            = 1
  enable_cors         = false

  resource_group_id = data.default_rsgp.id


  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}