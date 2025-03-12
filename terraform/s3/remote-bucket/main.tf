provider "aws" {
   region = "ap-south-1"
   
}


resource "aws_s3_bucket" "remote" {
  bucket = "swetha-qtree-remote-state" //update bucket name
}


resource "aws_s3_bucket_policy" "b" {
  bucket = aws_s3_bucket.remote.id
  depends_on = [aws_s3_bucket.remote]
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::537124953676:root" 
            },
            "Action": "s3:ListBucket",
            "Resource": "arn:aws:s3:::swetha-qtree-remote-state" 
        },
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::537124953676:root" 
            },
            "Action": [
                "s3:GetObject",
                "s3:PutObject"
            ],
            "Resource": "arn:aws:s3:::swetha-qtree-remote-state/*" 
        }
    ]
}
POLICY
}
