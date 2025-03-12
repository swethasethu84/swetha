provider "aws" {
region = "ap-south-1"
}
resource "aws_instance" "ec2_example" {
ami = "ami-0dee22c13ea7a9a67"
instance_type = "t2.micro"
key_name="swetha"
vpc_security_group_ids = ["sg-019d87131a194eb23"]
associate_public_ip_address = "true"
subnet_id ="subnet-0f7aa8359712c7596"
provisioner "file" {
source = "/root/terraform/ec2/server-4" # copying file
destination = "/home/ubuntu"
}
connection {
type = "ssh"
host = self.public_ip
user = "ubuntu"
private_key = file("/root/terraform/ec2/server-4/swetha.pem")
timeout = "4m"
}
tags = { 
    Name = "terraserver"
}
}