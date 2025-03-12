provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "swetha" {
    ami = var.ububntu_ami
    instance_type = var.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids
    associate_public_ip_address = var.associate_public_ip_address
    subnet_id = var.subnet_id 
    key_name = var.key_name
    user_data= file("install-apache.sh")
    tags = {
    Name = "swetha-server-12"
    }  
}