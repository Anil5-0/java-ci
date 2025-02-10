FROM gcr.io/distroless/java:17

WORKDIR /app

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
