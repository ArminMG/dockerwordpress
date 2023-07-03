# Utiliza una imagen base de WordPress
FROM wordpress:latest
# Establece el directorio de trabajo dentro del contenedor
WORKDIR /var/www/html
# Copia el archivo de configuración de WordPress
COPY wp-config.php /var/www/html/wp-config.php
# Expone el puerto 80 para acceder al servidor web de WordPress
EXPOSE 80
# Ejecuta el servidor web de WordPress cuando se inicie el contenedor
CMD ["apache2-foreground"]
