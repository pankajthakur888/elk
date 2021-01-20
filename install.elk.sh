#!/bin/bash
#Update Server
	sudo apt update -y
	sudo apt upgrade -y

#Time and Date update and Network Tools 
	sudo timedatectl set-timezone Asia/Kolkata
	sudo apt install net-tools -y
  
#Install Dependency
  sudo apt install wget git curl openjdk-11-jre-headless -y

#ELK 

##- Elastic Search
  mkdir -p /opt/elk
  cd /opt/elk/
  wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.10.2-linux-x86_64.tar.gz
  tar -xzf elasticsearch-7.10.2-linux-x86_64.tar.gz
  cd elasticsearch-7.10.2/ 
  ./bin/elasticsearch
  sudo ln -s "${PWD}/bin/elasticsearch" /usr/local/bin/
 
 ##- Kibana
 	cd /opt/elk/
	curl -O https://artifacts.elastic.co/downloads/kibana/kibana-7.10.2-linux-x86_64.tar.gz
	tar -xzf kibana-7.10.2-linux-x86_64.tar.gz
	cd kibana-7.10.2-linux-x86_64/
	./bin/kibana
	sudo ln -s "${PWD}/bin/kibana" /usr/local/bin/
	
##- Logstash
	cd /opt/elk/
	wget https://artifacts.elastic.co/downloads/logstash/logstash-7.10.2-linux-x86_64.tar.gz
	tar -xzf logstash-7.10.2-linux-x86_64.tar.gz
	cd logstash-7.10.2
	./bin/logstash -f logstash.conf
	sudo ln -s "${PWD}/bin/logstash" /usr/local/bin/
