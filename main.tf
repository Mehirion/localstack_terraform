variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-local-bucket"
}

provider "aws" {
  alias                      = "localstack"
  access_key                 = "test"
  secret_key                 = "test"
  region                     = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "example" {
  provider = aws.localstack
  bucket   = var.bucket_name
}

resource "aws_s3_bucket_acl" "example_acl" {
  provider = aws.localstack
  bucket   = aws_s3_bucket.example.id
  acl      = "private"
}
