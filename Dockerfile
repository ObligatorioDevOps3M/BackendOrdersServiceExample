FROM openjdk:8-jdk-alpine
#ARG JAR_FILE
COPY orders-service-example.jar .
#ARG APP_ARGS="http://172.17.0.2:8080 http://172.17.0.2:8080 http://172.17.0.2:8080"
CMD ["java", "-jar", "./orders-service-example.jar", "http://172.17.0.2:8080", "http://172.17.0.2:8080", "http://172.17.0.2:8080"]