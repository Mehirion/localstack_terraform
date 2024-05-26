resource "aws_s3_bucket" "example" {
  provider = aws.localstack
  bucket   = var.bucket_name
}

resource "aws_s3_bucket_acl" "example_acl" {
  provider = aws.localstack
  bucket   = aws_s3_bucket.example.id
  acl      = "private"
}
