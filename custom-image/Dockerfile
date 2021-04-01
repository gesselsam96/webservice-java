FROM bitnami/tomcat:9.0.44-debian-10-r0

#USER root
#RUN mkdir /home/customscripts
COPY jars/*.jar /opt/bitnami/tomcat/lib
COPY HelloService.war /opt/bitnami/tomcat/webapps

