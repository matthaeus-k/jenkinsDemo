FROM openjdk:8-jdk-bullseye

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV NODE_HOME /opt/node
ENV NODE_V=14.19.0

WORKDIR $CATALINA_HOME

RUN mkdir -p "$CATALINA_HOME"
RUN mkdir -p "$NODE_HOME"

RUN apt-get update && apt-get install -y wget
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
RUN tar -xvzf apache-tomcat-9.0.58.tar.gz
RUN mv apache-tomcat-9.0.58 9.0.58


RUN wget -O "$NODE_V".tar.gz https://nodejs.org/download/release/latest-v14.x/node-v14.19.0-linux-arm64.tar.gz
RUN tar -xzvf "$NODE_V".tar.gz -C /opt/node --strip-components 0
RUN ln -s "$NOD_HOME"/node-v14.19.0-linux-arm64 "$NODE_HOME"/"$NODE_V"
ENV PATH  $NOD_HOME/$NODE_V/bin:$PATH


EXPOSE 8080
CMD ["./bin/catalina.sh", "run"]