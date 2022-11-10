#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
EC2ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
echo '<center><h1>Este Webserver esta LIVE: EC2ID </h1></center>' > /var/www/html/index.txt
sed "s/EC2ID/$EC2ID/" /var/www/html/index.txt > /var/www/html/index.html
