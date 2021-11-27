FROM ubuntu:latest
ARG username=$GIT_USERNAME
ARG password=$GIT_PASSWORD
RUN apt update && apt install -y default-jdk maven git
ENV PACKAGE_DIR="/package"
WORKDIR $PACKAGE_DIR
RUN git clone http://github.com/efsavage/hello-world-war.git
RUN mvn package -f $PACKAGE_DIR/hello-world-war/pom.xml
WORKDIR $PACKAGE_DIR/hello-world-war/target