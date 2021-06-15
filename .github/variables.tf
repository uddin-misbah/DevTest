variable "project_id" {
  default = "golang-misbah"
  type        = string
}

variable "bucket_name" {
  default = "GitActions-Bucket"
  type        = string
}

variable "topic_name" {
  default = "gitaction_topic"
  type        = string
}

variable "event_type" {
  description = "The events that trigger a notification to be sent."
  type        = string
  default     = "OBJECT_FINALIZE"
}
