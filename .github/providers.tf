provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "actions_bucket_misbah"
    prefix = "terraform/state"
  }
}
