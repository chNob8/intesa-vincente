# Usa un'immagine leggera di Nginx
FROM nginx:alpine

# Copia il file index.html nella cartella predefinita di Nginx
COPY index.html /usr/share/nginx/html/index.html

# Espone la porta 80
EXPOSE 80

# Avvia Nginx
CMD ["nginx", "-g", "daemon off;"]