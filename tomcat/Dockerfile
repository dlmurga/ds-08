FROM tomcat:jre8-alpine
ARG DEBIAN_FRONTEND=noninteractive
RUN apk --update add git
WORKDIR /tmp
RUN git clone https://github.com/dlmurga/ds-08-docker.git && \
    cp /tmp/ds-08-docker/hello-world-war-1.0.0.war /usr/local/tomcat/webapps