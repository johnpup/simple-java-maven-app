FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps


COPY --chown=ec2-user:ec2-user target/**.jar /home/ec2-user/*.jar

ADD /home/ec2-user/workspace/newjob/target/*.jar /usr/local/tomcat/webapp
