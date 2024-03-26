terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.20.0"
    }
  }
}

provider "google" {
  # Configuration options
  project   = "gcpsa-sandbox"
  region    = "asia-east1"
  zone      = "asia-east1-a"
  #description = "this is public host project id"
}

