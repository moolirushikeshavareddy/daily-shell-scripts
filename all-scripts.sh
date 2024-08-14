#!/bin/bash
#installation scripts for amazon-linus machines

#updating amazon-linux
sudo yum update -y

#installing git maven java-17 docker trivy
sudo yum install git maven java-17 docker trivy -y

#installing jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins


#installing sonarqube
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
sudo unzip sonarqube-8.9.6.50800.zip
#amazon-linux-extras install java-openjdk11 -y
sudo useradd sonar
sudo chown sonar:sonar sonarqube-8.9.6.50800 -R
sudo chmod 777 sonarqube-8.9.6.50800 -R
#sudo sh /sonarqube-8.9.6.50800/bin/linux-86x64/sonar.sh start
