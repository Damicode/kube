# start with the alpine linux tomcat image test real day
FROM tomcat:8.5-jdk8-openjdk

# switch to the CATALINA_HOME directory 
WORKDIR $CATALINA_HOME


# create a reference to some file on the physical machine (optional)
ARG WAR_FILE=./target/*.war

# copy the file from the physical machine to the webapps dir in the PWD
COPY $WAR_FILE ./webapps/ROOT.war

# EXPOSE port 8080
EXPOSE 8080

# execute this command to start tomcat
CMD ["catalina.sh", "run"]

#Image will begin running
