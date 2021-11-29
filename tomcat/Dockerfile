FROM tomcat:jre8-alpine
ARG DEBIAN_FRONTEND=noninteractive
RUN apk --update add git
WORKDIR /usr/local/tomcat/webapps
RUN git clone https://github.com/dlmurga/ds-08-docker.git