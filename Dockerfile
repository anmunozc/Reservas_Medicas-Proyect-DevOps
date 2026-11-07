# Imagen base de Nginx
FROM nginx:alpine

# Copiar los archivos de la aplicación al directorio web de Nginx
COPY src/ /usr/share/nginx/html/

# Exponer el puerto utilizado por Nginx
EXPOSE 80