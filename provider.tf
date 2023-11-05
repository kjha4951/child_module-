
terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

provider "newrelic" {
  account_id = 4042825
  api_key = "NRAK-Q109PP4C0FOCEH1IZ5UZ8LGFH4B" 
  region = "US"                    
}