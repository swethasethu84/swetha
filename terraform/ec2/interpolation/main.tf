provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_s3_bucket" "terra" {
  bucket = "interpol"
}
output "bucket-arn" {
    value = aws_s3_bucket.terra.arn
}