provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_vpc" "interpol" {
    cidr_block = "10.0.0.0/16"
    tags={
        Name ="swetha-vpc"
    } 
}
resource "aws_subnet" "auto" {
    vpc_id = aws_vpc.interpol.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "subnet-public"
    }
  
}