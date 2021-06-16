data "google_storage_project_service_account" "gcs_service_account" {
  ###project_id is required
  project = "golang-misbah"
}

resource "google_pubsub_topic" "pubsub" {
  ###topic name is required
  name = "notifications."
}

resource "google_pubsub_subscription" "echo" {
  name  = "echo"
  topic = google_pubsub_topic.pubsub.name
}
