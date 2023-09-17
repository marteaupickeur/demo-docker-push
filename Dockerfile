# Use an official AdoptOpenJDK 17 runtime as a parent image
FROM openjdk:17-alpine

# Set the working directory in the container
WORKDIR /app

# Copy all the Spring Boot application JAR files into the container
COPY ./target/demo-docker-push-0.0.1-SNAPSHOT.jar Api.jar

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Define the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "Api.jar"]