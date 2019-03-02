FROM ubuntu:latest

RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN apt-get install vim -y
RUN apt-get install openjdk-8-jre-headless -y

RUN useradd -d /home/ubuntu -ms /bin/bash -g root -G sudo -p ubuntu ubuntu

WORKDIR /home/ubuntu

RUN wget https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-7.5.zip
RUN unzip sonarqube-developer-7.5.zip
RUN chown -R ubuntu:root /home/ubuntu/sonarqube-7.5
ADD entrypoint.sh /home/ubuntu/entrypoint.sh
RUN chmod 777 /home/ubuntu/entrypoint.sh
COPY sonar.properties /home/ubuntu/sonarqube-7.5/conf/sonar.properties

USER ubuntu

WORKDIR /home/ubuntu/
ENTRYPOINT [ "./entrypoint.sh" ]

