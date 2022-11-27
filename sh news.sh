#!/bin/bash
su - slave
cd /home/slave
apt update
ap install default-jdk
java --version
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz
tar -xvzf apache-tomcat-10.0.27.tar.gz
mv apache-tomcat-10.0.27.tar.gz tomcat
cd /tomcat/conf
sed -i s/8080/8090/g server.xml
vi webapps/manager/META-INF/context.xml
vi webapps/host-manager/META-INF/context.xml
sh ../bin/shutdown.sh
sleep 2
sh ../bin/startup.sh
