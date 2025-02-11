FROM gcr.io/distroless/java17-debian11

WORKDIR /app

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
