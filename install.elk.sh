#!/bin/bash
#Update Server
	sudo apt update -y
	sudo apt upgrade -y

#Time and Date update and Network Tools 
	sudo timedatectl set-timezone Asia/Kolkata
	sudo apt install net-tools -y
  
#Install Dependency
  sudo apt install wget git curl

#ELK 
##- Elastic Search
  mkdir -p /opt/elk
  cd /opt/elk/
  wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.10.2-linux-x86_64.tar.gz
  tar -xzf elasticsearch-7.10.2-linux-x86_64.tar.gz
  cd elasticsearch-7.10.2/ 
  ./bin/elasticsearch

  

