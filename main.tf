provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_access_key           = "test"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  s3_force_path_style         = true
  endpoint                    = "http://localhost:4566"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}