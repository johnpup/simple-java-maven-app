FROM tomcat7
ADD my-app-1.0-SNAPSHOT.jar ${CATALINA_HOME}/webapps/ROOT.jar
CMD ${CATALINA_HOME}/bin/catalina.sh run
