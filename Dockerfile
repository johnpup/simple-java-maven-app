FROM tomcat:latest

copy ./my-app 1.0-SNAPSHOT.jar /
RUN /my-app 1.0-SNAPSHOT.jar 
