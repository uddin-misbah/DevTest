
output "topic_name" {
  description = "The URI of the Pub/Sub topic"
  value = google_pubsub_topic.pubsub.id
}
