FROM tomcat:8.0-alpine

workdir /home/ec2-user

copy . .

ADD my-app-1.0-SNAPSHOT.jar/usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
