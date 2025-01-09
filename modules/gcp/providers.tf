terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone = var.zone
  credentials = file(var.private_key_location)
}