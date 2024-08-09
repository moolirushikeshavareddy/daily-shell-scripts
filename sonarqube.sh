#! /bin/bash
#Launch an instance with 9000 and t2.medium
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
sudo unzip sonarqube-8.9.6.50800.zip
#amazon-linux-extras install java-openjdk11 -y
sudo yum install java-17 -y
