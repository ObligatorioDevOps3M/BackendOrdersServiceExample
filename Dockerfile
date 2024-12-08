FROM amazoncorretto:8

COPY ./target/orders-service-example-0.0.1-SNAPSHOT.jar .

EXPOSE 8081

CMD ["java", "-jar", "./orders-service-example-0.0.1-SNAPSHOT.jar", "http://payments-service:8083","http://shipping-service:8085","http://products-service:8080"]