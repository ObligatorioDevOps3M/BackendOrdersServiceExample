# Usar una imagen base de OpenJDK
FROM amazoncorretto:8
# Directorio de trabajo en el contenedor
WORKDIR /app
# Copiar el archivo .jar de Maven al contenedor
COPY ./target/orders-service-example-0.0.1-SNAPSHOT.jar .
# Se definen argumentos para las URLs
ARG URL_PAYMENTS
ARG URL_SHIPPING
ARG URL_PRODUCTS
# Se configuran variables de entorno
ENV URL_PAYMENTS=$URL_PAYMENTS
ENV URL_SHIPPING=$URL_SHIPPING
ENV URL_SHIPPING=$URL_SHIPPING
# Exponer el puerto en el que la aplicación estará disponible
EXPOSE 8081
# Comando para ejecutar la aplicación
CMD ["java", "-jar", "./orders-service-example-0.0.1-SNAPSHOT.jar", "$URL_PAYMENTS", "$URL_SHIPPING", "$URL_SHIPPING"]
