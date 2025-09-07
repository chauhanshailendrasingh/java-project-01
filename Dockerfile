# Use slim Java 17 image
FROM openjdk:17-jdk-slim

# Create a non-root user
RUN useradd -ms /bin/bash appuser

# Set working directory
WORKDIR /app

# Copy JAR into container
COPY target/java-cicd-app-1.0-SNAPSHOT.jar app.jar

# Switch to non-root user
USER appuser

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
