FROM tomcat:jre8-alpine
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y git
WORKDIR /usr/local/tomcat/webapps
RUN git clone https://github.com/dlmurga/ds-08-docker.git