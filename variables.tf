variable "region" {
  default = "us-east1"
  type        = string
}

variable "project_id" {
  default = "golang-misbah"
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
