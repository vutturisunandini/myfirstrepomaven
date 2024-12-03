FROM tomcat:9.0

# Install Java (if necessary for Tomcat to run the JAR, usually Tomcat images have Java)
RUN apt-get update && apt-get install -y openjdk-17-jdk

# Copy the JAR file to a known directory inside the container (e.g., /app)
COPY target/my-app-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/my-app.jar

# Expose the port Tomcat is running on (8080 by default in the Tomcat container)
EXPOSE 8080

# Command to run the JAR file directly
CMD ["java", "-jar", "/usr/local/tomcat/webapps/my-app.jar"]
