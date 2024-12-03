# Imagen base de Java 8
FROM openjdk:8-jdk-alpine

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo .jar generado al contenedor
COPY ./target/orders-service-example-0.0.1-SNAPSHOT.jar .

# Exponer el puerto en el que el servicio escucha
EXPOSE 8081

# Comando para ejecutar el servicio
CMD ["java", "-jar", "./orders-service-example-0.0.1-SNAPSHOT.jar", "http://payments-service:8083","http://shipping-service:8084","http://products-service:8080"]
