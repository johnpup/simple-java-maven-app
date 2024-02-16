FROM tomcat:8.0-alpine

WORKDIR /home/ec2-user/workspace/newjob/target/

copy my-app-1.0-SNAPSHOT.jar .

copy . .

EXPOSE 8080

CMD ["catalina.sh", "run"]
