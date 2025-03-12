#!/bin/bash
# Update package list and install Apache
apt update -y
apt install nginx -y
# Start Apache service
 systemctl start nginx
 systemctl enable 
