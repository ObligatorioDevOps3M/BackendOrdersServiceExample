# Usar una imagen base de OpenJDK
FROM openjdk:8-jdk-alpine
# Directorio de trabajo en el contenedor
WORKDIR /app
# Copiar el archivo .jar de Maven al contenedor
COPY ./target/orders-service-example-0.0.1-SNAPSHOT.jar .
# Exponer el puerto en el que la aplicación estará disponible
EXPOSE 8080
# Comando para ejecutar la aplicación
CMD ["java", "-jar", "./orders-service-example-0.0.1-SNAPSHOT.jar", "http://172.17.0.2:8080", "http://172.17.0.2:8080", "http://172.17.0.2:8080"]
