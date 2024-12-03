FROM openjdk:17-jdk-slim

# Copy the JAR file
COPY target/my-app-1.0-SNAPSHOT.jar /usr/local/my-app.jar

# Set the working directory
WORKDIR /usr/local

# Expose the port the application listens on
EXPOSE 8082

# Command to run the JAR
CMD ["java", "-jar", "my-app.jar"]

#FROM tomcat:9.0

# Install Java (if necessary for Tomcat to run the JAR, usually Tomcat images have Java)
#RUN apt-get update && apt-get install -y openjdk-17-jdk

# Copy the JAR file to a known directory inside the container (e.g., /app)
#COPY target/my-app-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/my-app.jar

# Expose the port Tomcat is running on (8080 by default in the Tomcat container)
#EXPOSE 8080

# Command to run the JAR file directly
#CMD ["java", "-jar", "/usr/local/tomcat/webapps/my-app.jar"]
