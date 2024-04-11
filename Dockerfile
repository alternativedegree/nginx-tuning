FROM openjdk:23-slim-bullseye
ARG JAR_FILE=target/test-jar-with-dependencies.jar
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
