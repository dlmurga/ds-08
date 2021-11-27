FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
ARG username
ARG password
RUN apt update && apt install -y default-jdk maven git
ENV PACKAGE_DIR="/package"
WORKDIR $PACKAGE_DIR
RUN git clone http://github.com/efsavage/hello-world-war.git
RUN mvn package -f $PACKAGE_DIR/hello-world-war/pom.xml
WORKDIR $PACKAGE_DIR/hello-world-war/target
RUN git init && \
    git add hello-world-war-1.0.0.war && \
    git commit - m "war file added" && \
    git remote add origin https://$username:$password@github.com/dlmurga/ds-08-docker.git && \
    git push -u origin main