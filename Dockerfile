FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY /home/ec2-user/workspace/newjob/*.jar /usr/local/tomcat/webapps

