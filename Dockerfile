FROM centos:7
RUN yum install java-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.93/bin/apache-tomcat-8.5.93.tar.gz ./
RUN tar -xzf /apache-tomcat/apache-tomcat-8.5.93.tar.gz -C /opt
WORKDIR /Opt/apache-tomcat-8.5.93
RUN ls /opt/apache-tomcat-8.5.93/
CMD ["/opt/apache-tomcat-8.5.93/bin/catalina.sh" , "run"]