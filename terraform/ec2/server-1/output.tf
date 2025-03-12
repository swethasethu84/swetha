output "ububntu-ami" {
  value = aws_instance.swetha.ami
}
output "instance_type" {
   value = aws_instance.swetha.instance_lifecycle
}
output " vpc_security_group_ids" {
   value = aws_instance.swetha.security_groups
}
output "associate_public_ip_address" {
    value = aws_instance.swetha.associate_public_ip_address
  
}
output "subnet_id" {
    value = aws_instance.swetha.subnet_id
  
}
output "public_ip" {
    value = aws_instance.swetha.public_ip
  
}