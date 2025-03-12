variable "ububntu_ami"{
      default = "ami-0dee22c13ea7a9a67"
}
variable "instance_type" {
    default ="t2.micro"

}
variable  "vpc_security_group_ids" {
    default = ["sg-019d87131a194eb23"]
  
}
variable  "associate_public_ip_address" {
    default ="true"
  
}
variable "subnet_id" {
    default = "subnet-0f7aa8359712c7596"
  
}
variable "key_name" {
  default = "swetha"
}