output "bucket_id" {
  description = "ID bucketu S3"
  value       = aws_s3_bucket.example_bucket.id
}

output "bucket_arn" {
  description = "ARN bucketu S3"
  value       = aws_s3_bucket.example_bucket.arn
}