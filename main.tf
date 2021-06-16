resource "google_service_account" "service_account" {
  account_id   = "misbahuddin-sa-pubsub"
  display_name = "misbahuddin-sa-pubsub"
  project = var.project_id
}

resource "google_pubsub_topic" "pubsub" {
  name = var.topic_name
  project = var.project_id
}

resource "google_pubsub_topic_iam_binding" "binding" {
  members = ["serviceAccount:${google_service_account.service_account.email}"]
  role    = "roles/pubsub.publisher"
  topic   = google_pubsub_topic.pubsub.id
}

resource "google_pubsub_subscription" "echo" {
  name  = "echo"
  topic = google_pubsub_topic.pubsub.name
}
