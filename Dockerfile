FROM tomcat:8

WORKDIR /home/ec2-user/workspace/newjob/target/

copy my-app-1.0-SNAPSHOT.jar .

ADD my-app-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]
