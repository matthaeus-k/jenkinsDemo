FROM openjdk:8-jdk-bullseye

RUN mkdir -p /usr/local/tomcat
RUN mkdir -p /opt/node

RUN apt-get update && apt-get install -y wget
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
RUN tar -xvzf apache-tomcat-9.0.58.tar.gz
RUN mv apache-tomcat-9.0.58 9.0.58


RUN wget -O 14.19.0.tar.gz https://nodejs.org/download/release/latest-v14.x/node-v14.19.0-linux-arm64.tar.gz
RUN tar -xzvf 14.19.0.tar.gz -C /opt/node --strip-components 0
RUN ln -s /opt/node/node-v14.19.0-linux-arm64 /opt/node/14.19.0
ENV PATH  /opt/node/14.19.0/bin:$PATH
WORKDIR /usr/local/tomcat/9.0.58

EXPOSE 8080
CMD ["./bin/catalina.sh", "run"]