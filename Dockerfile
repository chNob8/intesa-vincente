FROM nginx:alpine

# Rimuovi i file di default di nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia TUTTO quello che c'è nella cartella corrente (html + mp3) dentro il container
COPY . /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]