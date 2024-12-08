FROM amazoncorretto:8
WORKDIR /app
COPY ./target/orders-service-example-0.0.1-SNAPSHOT.jar .
#ARG URL_PAYMENTS
#ARG URL_SHIPPING
#ARG URL_PRODUCTS
#ENV URL_PAYMENTS=$URL_PAYMENTS
#ENV URL_SHIPPING=$URL_SHIPPING
#ENV URL_PRODUCTS=$URL_PRODUCTS
EXPOSE 8081
CMD ["java", "-jar", "./orders-service-example-0.0.1-SNAPSHOT.jar", "http://a50691d0431c04a0bb79150dc0b8604a-699217277.us-east-1.elb.amazonaws.com:8083", "http://a21343f0988a849698738dc708d0367d-919086047.us-east-1.elb.amazonaws.com:8085", "http://a7cbbc7eee2d048b08f2f78aff89481f-302219217.us-east-1.elb.amazonaws.com:8080"]
#CMD ["java", "-jar", "./orders-service-example-0.0.1-SNAPSHOT.jar", $URL_PAYMENTS, $URL_SHIPPING, $URL_PRODUCTS]
