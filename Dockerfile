# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "bfsabah" 
COPY ./webapp.war /usr/local/tomcat/webapps


yum install docker
service docker start

useradd dockeradmin
passwd dockeradmin
usermod -aG docker dockeradmin
mkdir -p /opt/docker
cd /opt/docker
chwown dockeradmin:dockeradmin /opt/docker

docker stop dhemir_demo;
docker rm -f dhemir_demo;
docker image rm -f dhemir_demo;
cd /opt/docker;
docker build -t dhemir_demo .

docker run -d --name dhemir_demo -p 8090:8080 dhemir_demo

<docker_host_Public_IP>:8090