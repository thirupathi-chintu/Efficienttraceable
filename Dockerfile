FROM mdelapenya/tomcat-mysql:7.0.77

#COPY yourapp.war /opt/apache-tomcat-7.0.77/webapps/yourapp.war

EXPOSE 8080 3306

COPY dist/Efficienttraceable.war /opt/apache-tomcat-7.0.77/webapps/

CMD []
