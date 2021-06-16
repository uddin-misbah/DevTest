output "bucket_url" {
  description = "Bucket URL"
  value = "https://console.cloud.google.com/storage/browser/${google_storage_bucket.misbah24444.name"
}

output "topic_name" {
  description = "The URI of the Pub/Sub topic"
  value = google_pubsub_topic.pubsub.id
}
