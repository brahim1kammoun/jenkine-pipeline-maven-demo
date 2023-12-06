FROM maven:3.6.0-jdk-13

RUN useradd -m -u 1000 -s /bin/bach jenkins

RUN npm install -y openssh-clients