variable "project_id" {
  description = "golang-misbah"
  type        = string
}

variable "bucket_name" {
  default = "actions_bucket_misbah"
  type        = string
}

variable "topic_name" {
  default = "notifications."
  type        = string
}

variable "event_type" {
  description = "The events that trigger a notification to be sent."
  type        = string
  default     = "OBJECT_FINALIZE"
}
