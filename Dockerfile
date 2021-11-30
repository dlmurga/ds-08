FROM tomcat:jre8-alpine
ADD /package_folder/target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps