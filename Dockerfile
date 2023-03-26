# Build stage
FROM maven:3.8.3-openjdk-17 AS build

# Set the working directory
WORKDIR /build

# Copy the pom.xml and source code
COPY pom.xml .
COPY src/ /build/src/

# Build the application
RUN mvn clean package -DskipTests

# Final stage
FROM eclipse-temurin:17-jre-alpine
# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /build/target/app.jar /app/app.jar

# Expose the port your application runs on
EXPOSE 8080

# Set the startup command to run your application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
