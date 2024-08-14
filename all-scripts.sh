#!/bin/bash
#installation scripts for amazon-linus machines

#updating amazon-linux
sudo yum update -y

#installing git maven java-17 docker trivy
sudo yum install git maven docker trivy -y

#installing sonarqube
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
sudo unzip sonarqube-8.9.6.50800.zip
#amazon-linux-extras install java-openjdk11 -y
sudo useradd sonar
sudo chown sonar:sonar sonarqube-8.9.6.50800 -R
sudo chmod 777 sonarqube-8.9.6.50800 -R
#sudo sh /sonarqube-8.9.6.50800/bin/linux-x86-64/sonar.sh start
sudo sh /sonarqube-8.9.6.50800/bin/linux-x86-64/sonar.sh start




sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install java-17
sudo yum install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins



#amazon-linux-2 machine
#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install git java-1.8.0-openjdk maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service
