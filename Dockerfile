# Use Tomcat 10 with Java 17
FROM tomcat:10.1-jdk17

# Remove default apps (optional, keeps container clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps folder
COPY target/*.war /usr/local/tomcat/webapps/app.war

# Expose the default Tomcat port
EXPOSE 8080

# Tomcat runs by default in foreground, no need to override ENTRYPOINT
# If you want, you can explicitly set:
# CMD ["catalina.sh", "run"]
