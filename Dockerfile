FROM maven:3.6.0-jdk-13

RUN useradd -m -u 1000 -g 1000 jenkins

RUN yum install -y openssh-clients