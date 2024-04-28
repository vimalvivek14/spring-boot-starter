# Start with a base image containing Java runtime
FROM openjdk:21-jdk

# Add Maintainer Info
LABEL maintainer="vimalvivek14@hotmail.com"

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/spring-boot-3-rest-api-example-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} spring-boot-3-rest-api-example-0.0.1-SNAPSHOT.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/spring-boot-3-rest-api-example-0.0.1-SNAPSHOT.jar"]
