FROM tomcat:latest
WORKDIR /home/ec2-user
copy --from=/home/ec2-user/workspace/newjob/target/my-app 1.0-SNAPSHOT.jar .
add my-app 1.0-SNAPSHOT.jar /usr/local/tomcat/webapps
cmd ["catalina.sh","run"]
 #RUN echo ${PWD} && ls -lR


#FROM base AS final
#WORKDIR /app
#COPY --from=publish /app/publish .
#ENTRYPOINT ["dotnet", "WhatzThat.Web.dll"]
