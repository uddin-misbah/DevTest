data "google_storage_project_service_account" "gcs_service_account" {
  ###project_id is required
  project = "golang-misbah"
}

data "google_pubsub_topic" "pubsub" {
  ###topic name is required
  name = "notifications."
}

resource "google_storage_notification" "notification" {
  bucket         = "actions_test_new2566"
  payload_format = "JSON_API_V1"
  topic          = "notifications."
  event_types    = [var.event_type]

  depends_on = [google_pubsub_topic_iam_binding.binding]
}

resource "google_pubsub_topic_iam_binding" "binding" {
  members = ["serviceAccount:${data.google_storage_project_service_account.gcs_service_account.email_address}"]
  role    = "roles/pubsub.publisher"
  topic   = google_pubsub_topic.pubsub.id
}

resource "google_pubsub_subscription" "echo" {
  name  = "echo"
  topic = google_pubsub_topic.pubsub.name
}
