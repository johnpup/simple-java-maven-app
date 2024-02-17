FROM tomcat:latest

copy /home/ec2-user/workspace/newjob/target/my-app 1.0-SNAPSHOT .
 RUN echo ${PWD} && ls -lR
