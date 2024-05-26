provider "aws" {
  access_key = "test"  # Ustaw swój access key
  secret_key = "test"  # Ustaw swój secret key

  # Opcjonalne - konfiguracja dla LocalStack
  region = "us-east-1"
  s3_force_path_style = true
  skip_credentials_validation = true
  skip_metadata_api_check = true

  endpoints {
    s3 = "http://localhost:4566"  # Endpoint dla LocalStack S3
  }
}
