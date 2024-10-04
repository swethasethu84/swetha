provider "aws" {
  region = var.project-region
}

resource "aws_s3_bucket" "name" {
    bucket = var.monday-bucket-name
}

resource "aws_s3_bucket_object_lock_configuration" "my_bucket_object_lock" {
  bucket = var.monday-bucket-name

  rule {
    default_retention {
      mode   = "GOVERNANCE" # or "COMPLIANCE"
      days   = 30           # Modify retention period as per your requirement
    }
  }
}