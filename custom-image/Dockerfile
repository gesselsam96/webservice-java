FROM tomcat:9.0-jdk8-adoptopenjdk-hotspot

#USER root
#RUN mkdir /home/customscripts
COPY jars/*.jar /usr/local/tomcat/lib
COPY HelloService.war /usr/local/tomcat/webapps

#CMD [ "/opt/tomcat/bin/catalina.sh" ]