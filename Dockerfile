FROM centos:7 
RUN yum install java-openjdk -y 
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.93/bin/apache-tomcat-8.5.93.tar.gz .
RUN tar -xvf apache-tomcat-8.5.93.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.93/
COPY student.war webapps
CMD ["apache-tomcat-8.5.93/bin/catalina.sh run"]
ENTRYPOINT ["apache-tomcat-8.5.93/bin/catalina.sh run"]