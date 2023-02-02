data "ibm_iam_auth_token" "tokendata" {}

terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.50.0"
    }
     http = {
      source = "hashicorp/http"
      version = "3.2.1"
    }
  }
}


data "http" "example" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}
