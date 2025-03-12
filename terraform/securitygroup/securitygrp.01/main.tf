provider "aws" {
  region = "ap-south-1"  # Replace with your region
}

resource "aws_security_group" "swethaproject-01" {
  name        = "swethaproject-01"
  description = "Security group to allow SSH access"
  vpc_id      = "vpc-0bf0ad9f999d7a1e7"  # Replace with your VPC ID

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open to all IPs, modify as needed
  }
   ingress {
    description = "Allow SSH"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open to all IPs, modify as needed
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "swethaproject-01"
  }
}
