FROM tomcat:8.0-alpine

workdir /home/ec2-user

copy my-app-1.0-SNAPSHOT.jar


copy . .


EXPOSE 8080

CMD [“catalina.sh”, “run”]
