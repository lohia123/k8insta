FROM centos:latest
RUN yum install java-11-openjdk -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.60.tar.gz
RUN mv apache-tomcat-9.0.60/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]