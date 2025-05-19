# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "tera-bucket"
    prefix = "terraform/state"
    credentials = "coops-custom-class65-4b162b0b2301.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

