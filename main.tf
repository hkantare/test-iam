data "ibm_iam_auth_token" "tokendata" {}

terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.50.0"
    }
  }
}
