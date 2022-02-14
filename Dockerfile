FROM openjdk:8-jdk-bullseye
MAINTAINER KSH212

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV NOD_HOME /opt/node
ENV NODE_V=14.19.0

RUN mkdir -p "$CATALINA_HOME"

RUN apt-get update && apt-get install -y
RUN wget -O "$NODE_V".tar.gz https://nodejs.org/download/release/latest-v14.x/node-v14.19.0-linux-arm64.tar.gz
RUN tar -xzvf "$NODE_V".tar.gz -C /opt/node --strip-components 0
RUN ln -s "$NOD_HOME"/node-v14.19.0-linux-arm64 "$NOD_HOME"/"$NODE_V"
ENV PATH  $NOD_HOME/$NODE_V/bin:$PATH

WORKDIR $CATALINA_HOME

EXPOSE 8080
CMD ["catalina.sh", "run"]