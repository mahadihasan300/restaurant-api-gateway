FROM openjdk:17-jdk-slim
VOLUME /tmp
ARG JAR_FILE=target/restaurant-api-gateway.jar
COPY ${JAR_FILE} restaurant-api-gateway.jar
ENTRYPOINT ["java", "-jar", "/restaurant-api-gateway.jar"]
