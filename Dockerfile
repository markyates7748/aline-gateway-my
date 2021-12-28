FROM openjdk:8-jdk-alpine
COPY ./target/aline-gateway-0.0.1-SNAPSHOT.jar app.jar
ENV APP_PORT 8080
ENV APP_SERVICE_HOST localhost
ENV PORTAL_LANDING http://localhost:4200
ENV PORTAL_DASHBOARD http://localhost:3007
ENV PORTAL_ADMIN http://localhost:3000
ENTRYPOINT ["java", "-jar", "/app.jar"]