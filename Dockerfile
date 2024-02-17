FROM tomcat:latest

copy /home/ec2-user/workspace/newjob/target/my-app 1.0-SNAPSHOT.jar 
add my-app 1.0-SNAPSHOT.jar /usr/local/tomcat/webapps
 #RUN echo ${PWD} && ls -lR
