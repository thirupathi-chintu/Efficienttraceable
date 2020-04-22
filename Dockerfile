FROM tomcat:9-jre8

EXPOSE 8080

RUN rm -rf /usr/local/tomcat/webapps/

COPY dist/Efficienttraceable.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
