FROM tomcat:8.0-alpine

workdir /home/ec2-user

copy /home/ec2-user/workspace/newjob/target/my-app-1.0-SNAPSHOT.jar 


ADD my-app-1.0-SNAPSHOT.jar/usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
