provider "aws" {
  region = var.aws_region
}
resource "aws_s3_bucket" "lifecycle_bucket" {
  bucket = var.bucket_name
}
resource "aws_s3_bucket_lifecycle_configuration" "lifecycle_rule" {
  bucket = aws_s3_bucket.lifecycle_bucket.id

  rule {
    id     = "lifecycle_rule"
    status = "Enabled"

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 90
      storage_class = "GLACIER"
    }

    expiration {
      days = 365
    }

    filter {}  # rule applies to all objects
  }
}
