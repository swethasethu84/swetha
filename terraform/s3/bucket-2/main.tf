provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_s3_bucket" "qtree_automation_bucket-02" {
    bucket = "qtree-automation-02"
  
}
resource "aws_s3_bucket" "qtree_automation_bucket-03" {
   # depends_on = [ aws_s3_bucket.qtree_automation_bucket-02 ]
    bucket = "qtree-automation-03"
  
}