FROM openjdk:8u312-jre-slim-buster
COPY ./target/aline-gateway-0.0.1-SNAPSHOT.jar app.jar
ENV APP_PORT 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]