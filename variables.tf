variable "bucket_name" {
  description = "Nazwa bucketu S3"
  type        = string
  default     = "example-bucket"
}

variable "environment" {
  description = "Środowisko dla tego bucketu S3"
  type        = string
  default     = "development"
}