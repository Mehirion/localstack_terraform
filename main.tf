resource "aws_s3_bucket" "example" {
  provider = aws.localstack
  bucket   = var.bucket_name
  acl      = "private"
}
