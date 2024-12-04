# Imagen base de Java 8
FROM openjdk:8-jdk-alpine

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo .jar generado al contenedor
COPY orders-service-example-0.0.1-SNAPSHOT.jar .

# Exponer el puerto en el que el servicio escucha
EXPOSE 8081

RUN chmod +x orders-service-example-0.0.1-SNAPSHOT.jar
# Comando para ejecutar el servicio
CMD ["java", "-jar", "./orders-service-example-0.0.1-SNAPSHOT.jar", "http://payments-service:8083","http://shipping-service:8085","http://products-service:8080"]
