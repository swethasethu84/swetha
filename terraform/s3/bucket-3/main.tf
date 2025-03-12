provider "aws" {
   region = "ap-south-1"
   
}
resource "aws_s3_bucket" "remote" {
  bucket = "swetha-sample-data" //update bucket name
}