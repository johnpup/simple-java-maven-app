FROM tomcat:latest

workdir /home/ec2-user

COPY --chown=ec2-user:ec2-user target/**.jar /home/ec2-user/*.jar

ADD /home/ec2-user/workspace/newjob/target/my-app 1.0-SNAPSHOT.jar /usr/local/tomcat/webapp

expose 8080
