# Use the official OpenJDK base image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file built by Gradle into the container
COPY build/libs/spring-21-0.0.1-SNAPSHOT.jar app.jar

ADD https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar /opt/opentelemetry-javaagent.jar
ENV JAVA_TOOL_OPTIONS="-javaagent:/opt/opentelemetry-javaagent.jar"

# Expose the port that your Spring Boot application listens on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]
