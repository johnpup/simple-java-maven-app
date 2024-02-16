FROM tomcat:8

WORKDIR /home/ec2-user/workspace/newjob/target/



ADD  /usr/local/tomcat/webapps/ my-app-1.0-SNAPSHOT.jar

EXPOSE 8080

CMD ["catalina.sh", "run"]
